USE RESORTDB
GO 

-- FUNCT. 1
CREATE OR ALTER FUNCTION f_CheckPackage (@CID INT) 
RETURNS TABLE AS 
RETURN 
(
    WITH Expired_bill_service AS
    (
        SELECT  BILL_PACKAGE_NAME
                , START_DAY
                , DATEADD(YEAR, 1, START_DAY) AS EXPIRED_DATE
                , CONVERT(DATE, GETDATE()) AS PRESENT_DATE
        FROM BILL_SERVICE
        WHERE BILL_CID = @CID
    )
    , Compare_bill_service AS
    (
        SELECT  BILL_PACKAGE_NAME
                , START_DAY
                , PRESENT_DATE
                , EXPIRED_DATE
                , IIF(START_DAY > PRESENT_DATE, START_DAY, PRESENT_DATE) AS START_COUNT_DAY
        FROM Expired_bill_service
    )
    , Remain_bill_service AS
    (
        SELECT  BILL_PACKAGE_NAME
                , START_DAY
                , PRESENT_DATE
                , EXPIRED_DATE
                , DATEDIFF(day, START_COUNT_DAY, EXPIRED_DATE) AS REMAINING_DAY
        FROM Compare_bill_service
    )
    SELECT BILL_PACKAGE_NAME, NUM_GUESTS, START_DAY, EXPIRED_DATE, REMAINING_DAY
    FROM Remain_bill_service T1
    JOIN PACKAGE T2 ON T2.PACKAGE_NAME = T1.BILL_PACKAGE_NAME
)
GO
SELECT * FROM f_CheckPackage(4)
GO

--FUNCT. 2
CREATE OR ALTER FUNCTION f_SumGuest (@BID INT, @YEARR INT) 
RETURNS TABLE AS 
RETURN
(
    WITH ticket_booking AS
    (
        SELECT ID, BOOKING_DATE, STATUSS, CAPACITY
        FROM BOOKTICKET
        WHERE STATUSS = 1
    )
    , Room_for_rent AS
    (
        SELECT  ROOM_TICKET_ID, ROOM_RENT_BID
        FROM ROOM_RENT
        WHERE ROOM_RENT_BID = @BID
    )
    , ticket_book_room AS
    (
        SELECT  ticket_booking.ID
                , MONTH(ticket_booking.BOOKING_DATE) AS [Monthh]
                , YEAR(ticket_booking.BOOKING_DATE) as [Yearr]
                , ticket_booking.CAPACITY
        FROM ticket_booking JOIN Room_for_rent ON ticket_booking.ID = Room_for_rent.ROOM_TICKET_ID
    )
    , Bookticket_by_month AS
    (
        SELECT Monthh
                , SUM(CAPACITY) AS [TOTAL_GUESTS_MONTH]
        FROM ticket_book_room
        WHERE [Yearr] = @YEARR
        GROUP BY Monthh
    )
    SELECT * FROM Bookticket_by_month
)
GO
SELECT * FROM f_SumGuest(9, 2040)
GO