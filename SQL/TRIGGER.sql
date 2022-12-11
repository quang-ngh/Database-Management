USE RESORTDB
GO

-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
-- TRIGGER 1a
CREATE OR ALTER TRIGGER trg_UPDATE_HD_GDV
ON BILL_SERVICE
AFTER INSERT
AS
BEGIN
    DECLARE @maKH VARCHAR(8), @ten_goi_DV NVARCHAR(50), @ngay_gio_mua DATETIME;
    SET @maKH = (SELECT BILL_CID FROM inserted);
    SET @ten_goi_DV = (SELECT BILL_PACKAGE_NAME FROM inserted);
    SET @ngay_gio_mua = (SELECT DATE_BUY FROM inserted);
    
    WITH uu_dai_cua_KH AS
    (
        SELECT  CID
                , CTYPE
                , IIF(CTYPE = 1, 100, IIF(CTYPE = 2, 90, IIF(CTYPE = 3 , 85, 80))) AS Giam_gia
                , IIF(CTYPE = 3, 1, IIF(CTYPE = 4, 2, 0)) AS Ngay_them
        FROM CUSTOMER
        WHERE CID = @maKH
    )
    , don_gdv AS
    (
        SELECT hd.BILL_CID
                , hd.BILL_PACKAGE_NAME
                , gdv.[COST (kVND)] AS Gia_goi_dv
                , gdv.NUM_DAYS AS So_ngay_GDV
        FROM BILL_SERVICE hd
        LEFT JOIN PACKAGE gdv ON hd.BILL_PACKAGE_NAME = gdv.PACKAGE_NAME
        WHERE hd.BILL_PACKAGE_NAME = @ten_goi_DV AND hd.DATE_BUY = @ngay_gio_mua
    )
    , thanh_toan_gdv AS
    (
        SELECT  don_gdv.BILL_CID
                , BILL_PACKAGE_NAME
                , Gia_goi_dv*COALESCE(Giam_gia,100)/100 AS Tong_tien
                , (So_ngay_GDV + COALESCE(Ngay_them,0)) AS So_ngay_gdv
        FROM don_gdv 
        LEFT JOIN uu_dai_cua_KH ud ON don_gdv.BILL_CID = ud.CID
    )
    UPDATE BILL_SERVICE
    SET [TOTAL_COST (kVND)] = (SELECT Tong_tien FROM thanh_toan_gdv)
    , USED_DATE = (SELECT So_ngay_gdv FROM thanh_toan_gdv)
    WHERE BILL_CID = @maKH AND BILL_PACKAGE_NAME = @ten_goi_DV AND DATE_BUY = @ngay_gio_mua
END
GO

-- TRIGGER 1b
CREATE OR ALTER TRIGGER trg_INSERT_PHONG_THUE
ON ROOM_RENT
AFTER INSERT
AS
BEGIN
    DECLARE @maDP CHAR(16);
    SET @maDP = (SELECT ROOM_TICKET_ID FROM inserted);
    WITH DDP_hien_tai AS
    (
        SELECT  TICKET_ID
                , CID
                , PACKAGE_NAME
                , DEPART_DATE
                , LEAVE_DATE
                , DATEDIFF(day, DEPART_DATE, LEAVE_DATE) AS So_ngay_dat
        FROM BOOKTICKET
        WHERE TICKET_ID = @maDP
    ) 
    , uu_dai_cua_KH AS
    (
        SELECT  CID
                , CTYPE
                , IIF(CTYPE = 1, 100, IIF(CTYPE = 2, 90, IIF(CTYPE = 3 , 85, 80))) AS Giam_gia
        FROM CUSTOMER
    )
    , gia_thue_phong AS
    (
        SELECT  pt.ROOM_RENT_BID
                , pt.ROOM_TICKET_ID
                , pt.ROOM_RENT_ID
                , ddp.CID
                , p.ROOM_TID
                , cn_lp.[COST (kVND)] AS Gia_thue_phong
        FROM ROOM_RENT pt
        JOIN DDP_hien_tai ddp ON pt.ROOM_TICKET_ID = ddp.TICKET_ID
        JOIN ROOM p ON pt.ROOM_RENT_BID = p.ROOM_BID AND pt.ROOM_RENT_ID = p.ROOMID
        JOIN BRANCH_HAVE_ROOMTYPE cn_lp ON p.ROOM_BID = cn_lp.BHR_BID AND p.ROOM_TID = cn_lp.BHR_TID
    )
    , gia_goi_dv AS
    (
        SELECT  DISTINCT ddp.TICKET_ID
                , ddp.CID
                , ddp.PACKAGE_NAME
                , hd.[TOTAL_COST (kVND)] AS Gia_goi_dv
        FROM DDP_hien_tai ddp
        LEFT JOIN BILL_SERVICE hd ON ddp.PACKAGE_NAME = hd.BILL_PACKAGE_NAME AND ddp.CID = hd.BILL_CID
    )
    , thong_tin_don AS
    (
        SELECT  ddp.TICKET_ID
                , gtp.ROOM_RENT_ID
                , gtp.Gia_thue_phong
                , COALESCE(ggdv.Gia_goi_dv, 0) AS Gia_goi_dv
                , COALESCE(ud.Giam_gia, 100) AS Giam_gia
                , ddp.So_ngay_dat
        FROM DDP_hien_tai ddp
        LEFT JOIN gia_thue_phong gtp ON ddp.TICKET_ID = gtp.ROOM_TICKET_ID
        LEFT JOIN gia_goi_dv ggdv ON ddp.TICKET_ID = ggdv.TICKET_ID
        LEFT JOIN uu_dai_cua_KH ud ON ddp.CID = ud.CID
    )
    , thanh_toan AS
    (
        SELECT ((Gia_thue_phong*So_ngay_dat)*Giam_gia/100 + Gia_goi_dv) AS Tong_tien
        FROM thong_tin_don
    )
    UPDATE BOOKTICKET 
    SET [TOTAL_COST (kVND)] = (SELECT Tong_tien FROM thanh_toan) 
    WHERE TICKET_ID = @maDP
END
GO

-- TRIGGER 1c
CREATE OR ALTER TRIGGER trg_UPDATE_DDP_TINH_TRANG
ON [dbo].[BOOKTICKET]
   AFTER UPDATE
AS BEGIN
    IF UPDATE (STATUSS)
    BEGIN
        DECLARE @maKH VARCHAR(8), @maDP CHAR(16), @tinhTrangMoi CHAR(1);
		SET @maKH = (SELECT CID FROM inserted);
		SET @maDP = (SELECT TICKET_ID FROM inserted);
		SET @tinhTrangMoi = (SELECT STATUSS FROM inserted);
		
		IF @tinhTrangMoi = '1' -- Da thanh toan
		BEGIN
			WITH DDP_hien_tai AS
			(
				SELECT  TICKET_ID
						, CID
						, PACKAGE_NAME
						, [TOTAL_COST (kVND)] AS Tong_tien
				FROM BOOKTICKET
				WHERE TICKET_ID = @maDP
			)
			-- , gia_goi_dv AS
			-- (
			-- 	SELECT  ddp.TICKET_ID
			-- 			, ddp.CID
			-- 			, ddp.PACKAGE_NAME
			-- 			, gdv.[COST (kVND)] AS Gia_goi_dv
			-- 			, gdv.NUM_DAYS AS Ngay_GDV
			-- 	FROM DDP_hien_tai ddp
			-- 	LEFT JOIN PACKAGE gdv ON ddp.PACKAGE_NAME = gdv.PACKAGE_NAME
			-- )
			-- , thong_tin_don AS
			-- (
			-- 	SELECT  ddp.TICKET_ID
			-- 			, ddp.CID
			-- 			, COALESCE(ddp.Tong_tien, 0) AS Tong_tien
			-- 			, COALESCE(ggdv.Gia_goi_dv, 0) AS Gia_goi_dv
			-- 	FROM DDP_hien_tai ddp
			-- 	LEFT JOIN gia_goi_dv ggdv ON ddp.TICKET_ID = ggdv.TICKET_ID
			-- )
			, diem_moi AS
			(
				SELECT	CID
                        , Tong_tien
						, Gia_goi_dv
						, (Tong_tien + Gia_goi_dv)/1000000 AS Diem_moi
				FROM thong_tin_don
			)
            , diem_cu AS
            (
                SELECT CID
                        ,SCORE
                FROM CUSTOMER
            )
            , tong_diem AS
            (
                SELECT (Diem_moi + SCORE) AS Tong_diem
                FROM diem_moi 
                JOIN CUSTOMER ON diem_moi.CID = CUSTOMER.CID  
            )
			UPDATE CUSTOMER SET SCORE = (SELECT Tong_diem FROM tong_diem)
			WHERE CID = @maKH
		END
    END
END
GO
-- UPDATE BOOKTICKET SET STATUSS = 1 WHERE TICKET_ID = 'DP27112022000001'
-- GO

-- TRIGGER 1d
CREATE OR ALTER TRIGGER trg_UPDATE_KH_LOAI
ON [dbo].[CUSTOMER]
   AFTER UPDATE
AS BEGIN
    IF UPDATE (SCORE) 
    BEGIN
        DECLARE @maKH VARCHAR(8);
		SET @maKH = (SELECT CID FROM inserted);
		
		BEGIN
			WITH loai_moi AS
			(
				SELECT IIF(SCORE < 50, 1, IIF(SCORE >= 50 AND SCORE < 100, 2, IIF(SCORE>= 100  AND SCORE < 1000, 3, 4))) AS Loai_Moi
                FROM CUSTOMER
                WHERE CID = @maKH
			)
            UPDATE CUSTOMER SET CTYPE = (SELECT Loai_Moi FROM loai_moi)
            WHERE CID = @maKH
		END
        
    END
END
GO
-- TRIGGER 2
CREATE OR ALTER TRIGGER trg_INSERT_HOA_DON_GDV
ON [dbo].[BILL_SERVICE]
   INSTEAD OF INSERT
AS BEGIN
	DECLARE	@maKH VARCHAR(8) = (SELECT BILL_CID FROM inserted)
			, @tenGoiDV NVARCHAR(50) = (SELECT BILL_PACKAGE_NAME FROM inserted)
			, @ngayBatDauMoi DATETIME = (SELECT START_DAY FROM inserted)
			, @check INT;
    WITH HDGDV_ngay_het_han AS
    (
        SELECT  BILL_PACKAGE_NAME
                , START_DAY
                , DATEADD(YEAR, 1, START_DAY) AS Ngay_het_han
        FROM BILL_SERVICE
        WHERE BILL_CID = @maKH AND BILL_PACKAGE_NAME = @tenGoiDV
    )
    SELECT @check = (SELECT COUNT(*) FROM HDGDV_ngay_het_han WHERE Ngay_het_han >= @ngayBatDauMoi)

    IF @check > 0
    BEGIN
        PRINT 'trg_INSERT_HOA_DON_GDV: Khach hang khong duoc phep mua 2 hoa đon cung mot goi dich vu co hieu luc trung len nhau!'
    END
    ELSE
    BEGIN
        INSERT INTO BILL_SERVICE SELECT * FROM inserted;
    END
END
GO
