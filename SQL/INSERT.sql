USE RESORTDB
GO 

-- 1. Branch
INSERT INTO BRANCH(PROVINCE,ADDR,PHONENUM,EMAIL) VALUES('Ha Giang','152, A street','899829341','CN1@resort.io')
INSERT INTO BRANCH(PROVINCE,ADDR,PHONENUM,EMAIL) VALUES('Da Nang','36 Lam Hoanh, Phuoc My ward, Son Tra district','999289962','CN2@resort.io')
INSERT INTO BRANCH(PROVINCE,ADDR,PHONENUM,EMAIL) VALUES('Buon Me Thuat','3 Phan Chu Trinh, Buon Me Thuat','896218059','CN3@resort.io')
INSERT INTO BRANCH(PROVINCE,ADDR,PHONENUM,EMAIL) VALUES('Sai Gon','76 Le Lai, Ben Thanh ward, district 1','559328587','CN4@resort.io')
INSERT INTO BRANCH(PROVINCE,ADDR,PHONENUM,EMAIL) VALUES('Sai Gon','141 Nguyen Hue, Ben Nghe ward, district 1','559339122','CN5@resort.io')
INSERT INTO BRANCH(PROVINCE,ADDR,PHONENUM,EMAIL) VALUES('Ha Noi','D8 Giang Vo, Ba Dinh district','306099757','CN6@resort.io')
INSERT INTO BRANCH(PROVINCE,ADDR,PHONENUM,EMAIL) VALUES('Ha Noi','13 Au Trieu, Hoan Kiem district','898084217','CN7@resort.io')
INSERT INTO BRANCH(PROVINCE,ADDR,PHONENUM,EMAIL) VALUES('Vung Tau','159 Thuy Van, Thang Tam ward','994928438','CN8@resort.io')
INSERT INTO BRANCH(PROVINCE,ADDR,PHONENUM,EMAIL) VALUES('Phu Yen','77 Duy Tan,  ward 5, Tuy Hoa district','897301396','CN9@resort.io')
INSERT INTO BRANCH(PROVINCE,ADDR,PHONENUM,EMAIL) VALUES('Binh Dinh','2 Nguyen Trung Tin, Nguyen Van Cu, Quy Nhon city','522909515','CN10@resort.io')
INSERT INTO BRANCH(PROVINCE,ADDR,PHONENUM,EMAIL) VALUES('Binh Dinh','44 An Duong Vuong, Quy Nhon city','566230397','CN11@resort.io')
-- 2. BRANCH_PIC
INSERT INTO BRANCH_PIC(LINK,BRANCH_BID) VALUES('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQW4ZwaxE9rpsuxX4TQA_zAeCL_MGGfZJIYlQ&usqp=CAU',2)
INSERT INTO BRANCH_PIC(LINK,BRANCH_BID) VALUES('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQemB39cBblb2GzSq5a7Rkm1iF4PR1kvWBEiA&usqp=CAU',3)
INSERT INTO BRANCH_PIC(LINK,BRANCH_BID) VALUES('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnxaEe7jX9IJMe6-cUv5u8uxfVAZ_Ub_zPTw&usqp=CAU',4)
INSERT INTO BRANCH_PIC(LINK,BRANCH_BID) VALUES('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2HNs1Xh__6Xwx8DxF0GFlFnS0qHnPFKxWDw&usqp=CAU',5)
INSERT INTO BRANCH_PIC(LINK,BRANCH_BID) VALUES('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9PUac9ZX35KviVWWzmzLTBYzt5GU_Tb5jyg&usqp=CAU',6)
INSERT INTO BRANCH_PIC(LINK,BRANCH_BID) VALUES('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_Ly672Se6icn_4-YkVQPo5uArSBQv69xtlg&usqp=CAU',7)
INSERT INTO BRANCH_PIC(LINK,BRANCH_BID) VALUES('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbx-6eYfHphBw711lfUSPfkhwarQZO82pjQw&usqp=CAU',8)
INSERT INTO BRANCH_PIC(LINK,BRANCH_BID) VALUES('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjNifMS2RexKhCKumdZmKJ7h45nkShYFdLLc7_y7X3yFa-grDWiG81wTBFniqAqQAmhq4&usqp=CAU',9)
INSERT INTO BRANCH_PIC(LINK,BRANCH_BID) VALUES('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUmZ59J4C2naMj3KQuf2godUJnaAL4QPq-1nObwrZnfzqUZvmnncY3Tg9ptVXPdzBq_r8&usqp=CAU',10)
INSERT INTO BRANCH_PIC(LINK,BRANCH_BID) VALUES('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRef5Xb-HIUFyv59rIMPzG1uscek9kVUyCAmw&usqp=CAU',11)
-- 3. ZONE
INSERT INTO ZONEE(ZNAME,ZONE_BID) VALUES('ZONE B',2)
INSERT INTO ZONEE(ZNAME,ZONE_BID) VALUES('ZONE D',3)
INSERT INTO ZONEE(ZNAME,ZONE_BID) VALUES('ZONE E',4)
INSERT INTO ZONEE(ZNAME,ZONE_BID) VALUES('ZONE A',5)
INSERT INTO ZONEE(ZNAME,ZONE_BID) VALUES('ZONE C',6)
INSERT INTO ZONEE(ZNAME,ZONE_BID) VALUES('ZONE B',7)
INSERT INTO ZONEE(ZNAME,ZONE_BID) VALUES('ZONE D',8)
INSERT INTO ZONEE(ZNAME,ZONE_BID) VALUES('ZONE A',9)
INSERT INTO ZONEE(ZNAME,ZONE_BID) VALUES('ZONE B',10)
INSERT INTO ZONEE(ZNAME,ZONE_BID) VALUES('ZONE A',11)
-- 4. ROOM TYPE
INSERT INTO ROOMTYPE(TYPENAME,INFOR,[AREA (m2)],NUMGUEST) VALUES('STANDARD','None',75,2)
INSERT INTO ROOMTYPE(TYPENAME,INFOR,[AREA (m2)],NUMGUEST) VALUES('MINIMALISTIC','None',82,3)
INSERT INTO ROOMTYPE(TYPENAME,INFOR,[AREA (m2)],NUMGUEST) VALUES('DELUXE','None',91,5)
INSERT INTO ROOMTYPE(TYPENAME,INFOR,[AREA (m2)],NUMGUEST) VALUES('STUDIO','None',102,5)
INSERT INTO ROOMTYPE(TYPENAME,INFOR,[AREA (m2)],NUMGUEST) VALUES('CONNECTING','None',200,7)
INSERT INTO ROOMTYPE(TYPENAME,INFOR,[AREA (m2)],NUMGUEST) VALUES('SUITES','None',105,5)
INSERT INTO ROOMTYPE(TYPENAME,INFOR,[AREA (m2)],NUMGUEST) VALUES('JUNIOR SUITES','None',110,7)
INSERT INTO ROOMTYPE(TYPENAME,INFOR,[AREA (m2)],NUMGUEST) VALUES('PRESIDENTIAL SUITES','None',150,8)
INSERT INTO ROOMTYPE(TYPENAME,INFOR,[AREA (m2)],NUMGUEST) VALUES('PENTHOUSE SUITES','None',220,10)
INSERT INTO ROOMTYPE(TYPENAME,INFOR,[AREA (m2)],NUMGUEST) VALUES('HONEYMOON SUITES','None',140,2)

-- 5. BED INFO
INSERT INTO BEDINFO(BED_TID,SIZE,CAPACITY) VALUES('1',1.2,5.0)
INSERT INTO BEDINFO(BED_TID,SIZE,CAPACITY) VALUES('2',1.5,2.0)
INSERT INTO BEDINFO(BED_TID,SIZE,CAPACITY) VALUES('3',1.8,4.0)
INSERT INTO BEDINFO(BED_TID,SIZE,CAPACITY) VALUES('4',2.0,7.0)
INSERT INTO BEDINFO(BED_TID,SIZE,CAPACITY) VALUES('5',1.6,9.0)
INSERT INTO BEDINFO(BED_TID,SIZE,CAPACITY) VALUES('6',1.8,1.0)
INSERT INTO BEDINFO(BED_TID,SIZE,CAPACITY) VALUES('7',2.1,7.0)
INSERT INTO BEDINFO(BED_TID,SIZE,CAPACITY) VALUES('8',2.2,4.0)
INSERT INTO BEDINFO(BED_TID,SIZE,CAPACITY) VALUES('9',2.3,5.0)
INSERT INTO BEDINFO(BED_TID,SIZE,CAPACITY) VALUES('10',2.4,5.0)

-- 6.BRANCH HAVE ROOM TYPE
INSERT INTO BRANCH_HAVE_ROOMTYPE(BHR_BID,BHR_TID,[COST (kVND)]) VALUES(2,2,1000)
INSERT INTO BRANCH_HAVE_ROOMTYPE(BHR_BID,BHR_TID,[COST (kVND)]) VALUES(2,1,2000)
INSERT INTO BRANCH_HAVE_ROOMTYPE(BHR_BID,BHR_TID,[COST (kVND)]) VALUES(3,3,1500)
INSERT INTO BRANCH_HAVE_ROOMTYPE(BHR_BID,BHR_TID,[COST (kVND)]) VALUES(4,4,2200)
INSERT INTO BRANCH_HAVE_ROOMTYPE(BHR_BID,BHR_TID,[COST (kVND)]) VALUES(5,5,2500)
INSERT INTO BRANCH_HAVE_ROOMTYPE(BHR_BID,BHR_TID,[COST (kVND)]) VALUES(6,6,2700)
INSERT INTO BRANCH_HAVE_ROOMTYPE(BHR_BID,BHR_TID,[COST (kVND)]) VALUES(7,7,3000)
INSERT INTO BRANCH_HAVE_ROOMTYPE(BHR_BID,BHR_TID,[COST (kVND)]) VALUES(8,2,3500)
INSERT INTO BRANCH_HAVE_ROOMTYPE(BHR_BID,BHR_TID,[COST (kVND)]) VALUES(9,4,3200)
INSERT INTO BRANCH_HAVE_ROOMTYPE(BHR_BID,BHR_TID,[COST (kVND)]) VALUES(10,1,3400)

-- 7. ROOM
INSERT INTO ROOM(ROOM_ZNAME,ROOMID,ROOM_TID,ROOM_BID) VALUES('ZONE B','101',2,2)
INSERT INTO ROOM(ROOM_ZNAME,ROOMID,ROOM_TID,ROOM_BID) VALUES('ZONE B','103',2,2)
INSERT INTO ROOM(ROOM_ZNAME,ROOMID,ROOM_TID,ROOM_BID) VALUES('ZONE C','203',5,6)
INSERT INTO ROOM(ROOM_ZNAME,ROOMID,ROOM_TID,ROOM_BID) VALUES('ZONE E','302',7,4)
INSERT INTO ROOM(ROOM_ZNAME,ROOMID,ROOM_TID,ROOM_BID) VALUES('ZONE B','402',9,7)
INSERT INTO ROOM(ROOM_ZNAME,ROOMID,ROOM_TID,ROOM_BID) VALUES('ZONE D','506',10,3)
INSERT INTO ROOM(ROOM_ZNAME,ROOMID,ROOM_TID,ROOM_BID) VALUES('ZONE A','103',9,5)
INSERT INTO ROOM(ROOM_ZNAME,ROOMID,ROOM_TID,ROOM_BID) VALUES('ZONE D','204',7,8)
INSERT INTO ROOM(ROOM_ZNAME,ROOMID,ROOM_TID,ROOM_BID) VALUES('ZONE C','307',8,6)
INSERT INTO ROOM(ROOM_ZNAME,ROOMID,ROOM_TID,ROOM_BID) VALUES('ZONE B','605',9,10)

--8. SUPPLY TYPE
INSERT INTO SUPPLY_TYPE(SUPPLY_TYPE_NAME) VALUES('LAMP')
INSERT INTO SUPPLY_TYPE(SUPPLY_TYPE_NAME) VALUES('PILLOW')
INSERT INTO SUPPLY_TYPE(SUPPLY_TYPE_NAME) VALUES('BEDDINGS')
INSERT INTO SUPPLY_TYPE(SUPPLY_TYPE_NAME) VALUES('SHEETS')
INSERT INTO SUPPLY_TYPE(SUPPLY_TYPE_NAME) VALUES('TABLE')
INSERT INTO SUPPLY_TYPE(SUPPLY_TYPE_NAME) VALUES('CHAIR')
INSERT INTO SUPPLY_TYPE(SUPPLY_TYPE_NAME) VALUES('MENU')
INSERT INTO SUPPLY_TYPE(SUPPLY_TYPE_NAME) VALUES('GARBAGE BAGS')
INSERT INTO SUPPLY_TYPE(SUPPLY_TYPE_NAME) VALUES('24 INCH TOWEL BAR')
INSERT INTO SUPPLY_TYPE(SUPPLY_TYPE_NAME) VALUES('SHOWER CURTAIN')

--9. SUPPLY IN ROOM
INSERT INTO SUPPLY_IN_ROOM(SIR_SUPPLYID,SIR_TID,NUM_SUPPLY) VALUES(2,6,18)
INSERT INTO SUPPLY_IN_ROOM(SIR_SUPPLYID,SIR_TID,NUM_SUPPLY) VALUES(3,9,20)
INSERT INTO SUPPLY_IN_ROOM(SIR_SUPPLYID,SIR_TID,NUM_SUPPLY) VALUES(2,7,19)
INSERT INTO SUPPLY_IN_ROOM(SIR_SUPPLYID,SIR_TID,NUM_SUPPLY) VALUES(9,8,19)
INSERT INTO SUPPLY_IN_ROOM(SIR_SUPPLYID,SIR_TID,NUM_SUPPLY) VALUES(4,9,1)
INSERT INTO SUPPLY_IN_ROOM(SIR_SUPPLYID,SIR_TID,NUM_SUPPLY) VALUES(4,3,6)
INSERT INTO SUPPLY_IN_ROOM(SIR_SUPPLYID,SIR_TID,NUM_SUPPLY) VALUES(3,5,17)
INSERT INTO SUPPLY_IN_ROOM(SIR_SUPPLYID,SIR_TID,NUM_SUPPLY) VALUES(1,8,3)
INSERT INTO SUPPLY_IN_ROOM(SIR_SUPPLYID,SIR_TID,NUM_SUPPLY) VALUES(5,2,7)
INSERT INTO SUPPLY_IN_ROOM(SIR_SUPPLYID,SIR_TID,NUM_SUPPLY) VALUES(6,6,20)

--10. SUPPLY

INSERT INTO SUPPLY(SUPPLY_BID,SUPPLYID,SUPPLY_ROOMID,STATUSS) VALUES(2,2,'101','GOOD')
INSERT INTO SUPPLY(SUPPLY_BID,SUPPLYID,SUPPLY_ROOMID,STATUSS) VALUES(5,4,'103','GOOD')
INSERT INTO SUPPLY(SUPPLY_BID,SUPPLYID,SUPPLY_ROOMID,STATUSS) VALUES(6,5,'203','DAMAGED')
INSERT INTO SUPPLY(SUPPLY_BID,SUPPLYID,SUPPLY_ROOMID,STATUSS) VALUES(7,6,'402','LOSS')
INSERT INTO SUPPLY(SUPPLY_BID,SUPPLYID,SUPPLY_ROOMID,STATUSS) VALUES(8,9,'204','GOOD')
INSERT INTO SUPPLY(SUPPLY_BID,SUPPLYID,SUPPLY_ROOMID,STATUSS) VALUES(6,1,'307','DAMAGED')
INSERT INTO SUPPLY(SUPPLY_BID,SUPPLYID,SUPPLY_ROOMID,STATUSS) VALUES(3,3,'506','LOSS')

--11. SUPPLIER
INSERT INTO SUPPLIER(SUPPLIER_NAME,SUPPLIER_EMAIL,SUPPLIER_ADDRES) VALUES('Spencer Stokes','SpencerStokes@gmail.com','Quan CAM, USA')
INSERT INTO SUPPLIER(SUPPLIER_NAME,SUPPLIER_EMAIL,SUPPLIER_ADDRES) VALUES('Nettie Wood','NettieWood@gmail.com','Quan CAM, USA')
INSERT INTO SUPPLIER(SUPPLIER_NAME,SUPPLIER_EMAIL,SUPPLIER_ADDRES) VALUES('Kane Aguilar','KaneAguilar@gmail.com','Quan 3, TPHCM')
INSERT INTO SUPPLIER(SUPPLIER_NAME,SUPPLIER_EMAIL,SUPPLIER_ADDRES) VALUES('Lawrence Hood','LawrenceHood@gmail.com','Quan 4, TPHCM')
INSERT INTO SUPPLIER(SUPPLIER_NAME,SUPPLIER_EMAIL,SUPPLIER_ADDRES) VALUES('Kitty Duran','KittyDuran@gmail.com','Can Tho')
INSERT INTO SUPPLIER(SUPPLIER_NAME,SUPPLIER_EMAIL,SUPPLIER_ADDRES) VALUES('Floyd Huber','FloydHuber@gmail.com','Quan CAM, USA')
INSERT INTO SUPPLIER(SUPPLIER_NAME,SUPPLIER_EMAIL,SUPPLIER_ADDRES) VALUES('Rhea Gardner','RheaGardner@gmail.com','Quan NO, USA')
INSERT INTO SUPPLIER(SUPPLIER_NAME,SUPPLIER_EMAIL,SUPPLIER_ADDRES) VALUES('Sid Watts','SidWatts@gmail.com','Quan CAM, USA')
INSERT INTO SUPPLIER(SUPPLIER_NAME,SUPPLIER_EMAIL,SUPPLIER_ADDRES) VALUES('Zac Richard','ZacRichard@gmail.com','Quan CAM, USA')
INSERT INTO SUPPLIER(SUPPLIER_NAME,SUPPLIER_EMAIL,SUPPLIER_ADDRES) VALUES('Curtis Allison','CurtisAllison@gmail.com','Quan 1, TPHCM')

--12. PROVIDE SUPPLY
INSERT INTO PROVIDE_SUPPLY(PROVIDE_SUPPLIER_ID,PROVIDE_SUPPLY_BID,PROVIDE_SUPPLYID) VALUES(4,5,4)
INSERT INTO PROVIDE_SUPPLY(PROVIDE_SUPPLIER_ID,PROVIDE_SUPPLY_BID,PROVIDE_SUPPLYID) VALUES(3,6,5)
INSERT INTO PROVIDE_SUPPLY(PROVIDE_SUPPLIER_ID,PROVIDE_SUPPLY_BID,PROVIDE_SUPPLYID) VALUES(5,7,6)
INSERT INTO PROVIDE_SUPPLY(PROVIDE_SUPPLIER_ID,PROVIDE_SUPPLY_BID,PROVIDE_SUPPLYID) VALUES(1,8,9)
INSERT INTO PROVIDE_SUPPLY(PROVIDE_SUPPLIER_ID,PROVIDE_SUPPLY_BID,PROVIDE_SUPPLYID) VALUES(2,9,9)
INSERT INTO PROVIDE_SUPPLY(PROVIDE_SUPPLIER_ID,PROVIDE_SUPPLY_BID,PROVIDE_SUPPLYID) VALUES(3,1,9)
INSERT INTO PROVIDE_SUPPLY(PROVIDE_SUPPLIER_ID,PROVIDE_SUPPLY_BID,PROVIDE_SUPPLYID) VALUES(4,2,9)
INSERT INTO PROVIDE_SUPPLY(PROVIDE_SUPPLIER_ID,PROVIDE_SUPPLY_BID,PROVIDE_SUPPLYID) VALUES(5,3,9)
INSERT INTO PROVIDE_SUPPLY(PROVIDE_SUPPLIER_ID,PROVIDE_SUPPLY_BID,PROVIDE_SUPPLYID) VALUES(6,1,1)
INSERT INTO PROVIDE_SUPPLY(PROVIDE_SUPPLIER_ID,PROVIDE_SUPPLY_BID,PROVIDE_SUPPLYID) VALUES(7,3,1)
INSERT INTO PROVIDE_SUPPLY(PROVIDE_SUPPLIER_ID,PROVIDE_SUPPLY_BID,PROVIDE_SUPPLYID) VALUES(8,2,1)
INSERT INTO PROVIDE_SUPPLY(PROVIDE_SUPPLIER_ID,PROVIDE_SUPPLY_BID,PROVIDE_SUPPLYID) VALUES(9,6,1)
INSERT INTO PROVIDE_SUPPLY(PROVIDE_SUPPLIER_ID,PROVIDE_SUPPLY_BID,PROVIDE_SUPPLYID) VALUES(10,7,1)

--13. CUSTOMER
INSERT INTO CUSTOMER([CMND/CCCD],FULLNAME,CUSTOMER_PHONENUMBER,CUSTOMER_EMAIL,USERNAME,SCORE,CTYPE,PASS) VALUES('20875705713','Wilbur Gill','899425406','WzpoQbjAPA!@gmail.com','WzpoQbjAPA',70,4, '8888888')
INSERT INTO CUSTOMER([CMND/CCCD],FULLNAME,CUSTOMER_PHONENUMBER,CUSTOMER_EMAIL,USERNAME,SCORE,CTYPE,PASS) VALUES('21592818283','Rafe Harrell','997975079','BOSLbzhJuA!@gmail.com','BOSLbzhJuA',959,2,'8888888')
INSERT INTO CUSTOMER([CMND/CCCD],FULLNAME,CUSTOMER_PHONENUMBER,CUSTOMER_EMAIL,USERNAME,SCORE,CTYPE,PASS) VALUES('55634107970','Ben Proctor','528690951','xFpI0tFvlL!@gmail.com','xFpI0tFvlL',278,2,'8888888')
INSERT INTO CUSTOMER([CMND/CCCD],FULLNAME,CUSTOMER_PHONENUMBER,CUSTOMER_EMAIL,USERNAME,SCORE,CTYPE,PASS) VALUES('10563699989','Holly Donaldson','356829358','8uyE6ttGEp!@gmail.com','8uyE6ttGEp',864,1,'8888888')
INSERT INTO CUSTOMER([CMND/CCCD],FULLNAME,CUSTOMER_PHONENUMBER,CUSTOMER_EMAIL,USERNAME,SCORE,CTYPE,PASS) VALUES('68355403770','Talia Odom','597487397','dy5ehtvqnO!@gmail.com','dy5ehtvqnO',348,3,'8888888')
INSERT INTO CUSTOMER([CMND/CCCD],FULLNAME,CUSTOMER_PHONENUMBER,CUSTOMER_EMAIL,USERNAME,SCORE,CTYPE,PASS) VALUES('59285087894','Florence Haines','350930099','W2jJ4DC8nE!@gmail.com','W2jJ4DC8nE',591,1,'8888888')
INSERT INTO CUSTOMER([CMND/CCCD],FULLNAME,CUSTOMER_PHONENUMBER,CUSTOMER_EMAIL,USERNAME,SCORE,CTYPE,PASS) VALUES('72248628805','Zaina Osborne','355710550','RlAhWvX3mt!@gmail.com','RlAhWvX3mt',195,1,'8888888')
INSERT INTO CUSTOMER([CMND/CCCD],FULLNAME,CUSTOMER_PHONENUMBER,CUSTOMER_EMAIL,USERNAME,SCORE,CTYPE,PASS) VALUES('49046708536','Yasir Donnelly','358193609','F9mFcPRGYd!@gmail.com','F9mFcPRGYd',948,3,'8888888')
INSERT INTO CUSTOMER([CMND/CCCD],FULLNAME,CUSTOMER_PHONENUMBER,CUSTOMER_EMAIL,USERNAME,SCORE,CTYPE,PASS) VALUES('4538825635','Helena Dunn','991218166','3nczY9nfLt!@gmail.com','3nczY9nfLt',17,3,'8888888')
INSERT INTO CUSTOMER([CMND/CCCD],FULLNAME,CUSTOMER_PHONENUMBER,CUSTOMER_EMAIL,USERNAME,SCORE,CTYPE,PASS) VALUES('83465082009','Aaliyah Nash','336756435','gp59Ot89Bi!@gmail.com','gp59Ot89Bi',498,2,'8888888')
INSERT INTO CUSTOMER([CMND/CCCD],FULLNAME,CUSTOMER_PHONENUMBER,CUSTOMER_EMAIL,USERNAME,SCORE,CTYPE,PASS) VALUES('39284504845','Wayne Fox','559825560','NQbJVgSGGl!@gmail.com','NQbJVgSGGl',299,2,'8888888')

--14. PACKAGE

INSERT INTO PACKAGE(PACKAGE_NAME,NUM_DAYS,NUM_GUESTS,[COST (kVND)]) VALUES('LOVE YOU',37,2,1000)
INSERT INTO PACKAGE(PACKAGE_NAME,NUM_DAYS,NUM_GUESTS,[COST (kVND)]) VALUES('WORKING LIKE A BEE',96,10,2000)
INSERT INTO PACKAGE(PACKAGE_NAME,NUM_DAYS,NUM_GUESTS,[COST (kVND)]) VALUES('NEVER ALONE',25,4,1000)
INSERT INTO PACKAGE(PACKAGE_NAME,NUM_DAYS,NUM_GUESTS,[COST (kVND)]) VALUES('HIGH TECH',34,2,2000)
INSERT INTO PACKAGE(PACKAGE_NAME,NUM_DAYS,NUM_GUESTS,[COST (kVND)]) VALUES('DRINK TILL DIE',82,3,3000)

--15. BILL SERVICE
INSERT INTO BILL_SERVICE(BILL_CID,BILL_PACKAGE_NAME,DATE_BUY,USED_DATE,START_DAY,[TOTAL_COST (kVND)]) VALUES(2,'WORKING LIKE A BEE','3/3/2022','58','3/5/2022',2000)
INSERT INTO BILL_SERVICE(BILL_CID,BILL_PACKAGE_NAME,DATE_BUY,USED_DATE,START_DAY,[TOTAL_COST (kVND)]) VALUES(3,'NEVER ALONE','2/2/2022','100','2/4/2022',1000)
INSERT INTO BILL_SERVICE(BILL_CID,BILL_PACKAGE_NAME,DATE_BUY,USED_DATE,START_DAY,[TOTAL_COST (kVND)]) VALUES(4,'HIGH TECH','6/5/2022','15','6/7/2022',2000)
INSERT INTO BILL_SERVICE(BILL_CID,BILL_PACKAGE_NAME,DATE_BUY,USED_DATE,START_DAY,[TOTAL_COST (kVND)]) VALUES(5,'DRINK TILL DIE','8/10/2022','35','8/12/2022',3000)
INSERT INTO BILL_SERVICE(BILL_CID,BILL_PACKAGE_NAME,DATE_BUY,USED_DATE,START_DAY,[TOTAL_COST (kVND)]) VALUES(6,'LOVE YOU','2/4/2022','20','2/6/2022',1000)
INSERT INTO BILL_SERVICE(BILL_CID,BILL_PACKAGE_NAME,DATE_BUY,USED_DATE,START_DAY,[TOTAL_COST (kVND)]) VALUES(7,'WORKING LIKE A BEE','12/10/2022','14','12/12/2022',2000)
INSERT INTO BILL_SERVICE(BILL_CID,BILL_PACKAGE_NAME,DATE_BUY,USED_DATE,START_DAY,[TOTAL_COST (kVND)]) VALUES(8,'NEVER ALONE','6/22/2022','27','6/24/2022',1000)
INSERT INTO BILL_SERVICE(BILL_CID,BILL_PACKAGE_NAME,DATE_BUY,USED_DATE,START_DAY,[TOTAL_COST (kVND)]) VALUES(9,'HIGH TECH','9/28/2022','46','9/30/2022',2000)
INSERT INTO BILL_SERVICE(BILL_CID,BILL_PACKAGE_NAME,DATE_BUY,USED_DATE,START_DAY,[TOTAL_COST (kVND)]) VALUES(10,'DRINK TILL DIE','12/22/2022','33','12/24/2022',3000)
INSERT INTO BILL_SERVICE(BILL_CID,BILL_PACKAGE_NAME,DATE_BUY,USED_DATE,START_DAY,[TOTAL_COST (kVND)]) VALUES(11,'LOVE YOU','7/12/2022','43','7/14/2022',1000)

--16. BOOK TICKET

INSERT INTO BOOKTICKET(BOOKING_DATE,DEPART_DATE,LEAVE_DATE,PACKAGE_NAME,CID,CAPACITY,STATUSS,[TOTAL_COST (kVND)]) VALUES('8/13/2022 8:00','8/15/2022','8/20/2022','WORKING LIKE A BEE',2,7,1,2000)
INSERT INTO BOOKTICKET(BOOKING_DATE,DEPART_DATE,LEAVE_DATE,PACKAGE_NAME,CID,CAPACITY,STATUSS,[TOTAL_COST (kVND)]) VALUES('9/11/2022 8:00','9/12/2022','9/15/2022','NEVER ALONE',3,2,3,1000)
INSERT INTO BOOKTICKET(BOOKING_DATE,DEPART_DATE,LEAVE_DATE,PACKAGE_NAME,CID,CAPACITY,STATUSS,[TOTAL_COST (kVND)]) VALUES('1/12/2022 8:00','1/20/2022','1/27/2022','HIGH TECH',4,3,2,2000)
INSERT INTO BOOKTICKET(BOOKING_DATE,DEPART_DATE,LEAVE_DATE,PACKAGE_NAME,CID,CAPACITY,STATUSS,[TOTAL_COST (kVND)]) VALUES('2/15/2022 8:00','2/16/2022','2/20/2022','DRINK TILL DIE',5,6,3,3000)
INSERT INTO BOOKTICKET(BOOKING_DATE,DEPART_DATE,LEAVE_DATE,PACKAGE_NAME,CID,CAPACITY,STATUSS,[TOTAL_COST (kVND)]) VALUES('11/12/2022 8:00','11/13/2022','11/28/2022','LOVE YOU',6,3,2,1000)
INSERT INTO BOOKTICKET(BOOKING_DATE,DEPART_DATE,LEAVE_DATE,PACKAGE_NAME,CID,CAPACITY,STATUSS,[TOTAL_COST (kVND)]) VALUES('10/5/2022 8:00','10/7/2022','10/14/2022','WORKING LIKE A BEE',7,8,0,2000)
INSERT INTO BOOKTICKET(BOOKING_DATE,DEPART_DATE,LEAVE_DATE,PACKAGE_NAME,CID,CAPACITY,STATUSS,[TOTAL_COST (kVND)]) VALUES('3/12/2022 8:00','3/15/2022','3/23/2022','NEVER ALONE',8,8,1,1000)
INSERT INTO BOOKTICKET(BOOKING_DATE,DEPART_DATE,LEAVE_DATE,PACKAGE_NAME,CID,CAPACITY,STATUSS,[TOTAL_COST (kVND)]) VALUES('4/9/2022 8:00','4/15/2022','4/20/2022','HIGH TECH',9,3,2,2000)
INSERT INTO BOOKTICKET(BOOKING_DATE,DEPART_DATE,LEAVE_DATE,PACKAGE_NAME,CID,CAPACITY,STATUSS,[TOTAL_COST (kVND)]) VALUES('7/12/2022 8:00','8/5/2022','8/12/2022','DRINK TILL DIE',10,6,3,3000)
INSERT INTO BOOKTICKET(BOOKING_DATE,DEPART_DATE,LEAVE_DATE,PACKAGE_NAME,CID,CAPACITY,STATUSS,[TOTAL_COST (kVND)]) VALUES('7/12/2022 8:00','7/15/2022','7/19/2022','LOVE YOU',11,3,0,1000)


--17. ROOM RENT
INSERT INTO ROOM_RENT(ROOM_TICKET_ID,ROOM_RENT_BID,ROOM_RENT_ID) VALUES(3,2,'101')
INSERT INTO ROOM_RENT(ROOM_TICKET_ID,ROOM_RENT_BID,ROOM_RENT_ID) VALUES(5,2,'103')
INSERT INTO ROOM_RENT(ROOM_TICKET_ID,ROOM_RENT_BID,ROOM_RENT_ID) VALUES(6,6,'203')
INSERT INTO ROOM_RENT(ROOM_TICKET_ID,ROOM_RENT_BID,ROOM_RENT_ID) VALUES(7,4,'302')
INSERT INTO ROOM_RENT(ROOM_TICKET_ID,ROOM_RENT_BID,ROOM_RENT_ID) VALUES(8,7,'402')
INSERT INTO ROOM_RENT(ROOM_TICKET_ID,ROOM_RENT_BID,ROOM_RENT_ID) VALUES(9,3,'506')
INSERT INTO ROOM_RENT(ROOM_TICKET_ID,ROOM_RENT_BID,ROOM_RENT_ID) VALUES(2,5,'103')
INSERT INTO ROOM_RENT(ROOM_TICKET_ID,ROOM_RENT_BID,ROOM_RENT_ID) VALUES(1,8,'204')
INSERT INTO ROOM_RENT(ROOM_TICKET_ID,ROOM_RENT_BID,ROOM_RENT_ID) VALUES(9,6,'307')

--18. BILL
INSERT INTO BILL(START_TIME,LEAVE_TIME,TICKET_ID) VALUES('13:50','12:05',2)
INSERT INTO BILL(START_TIME,LEAVE_TIME,TICKET_ID) VALUES('12:10','12:10',3)
INSERT INTO BILL(START_TIME,LEAVE_TIME,TICKET_ID) VALUES('12:05','12:02',4)
INSERT INTO BILL(START_TIME,LEAVE_TIME,TICKET_ID) VALUES('12:20','12:20',5)
INSERT INTO BILL(START_TIME,LEAVE_TIME,TICKET_ID) VALUES('11:25','12:25',6)
INSERT INTO BILL(START_TIME,LEAVE_TIME,TICKET_ID) VALUES('10:00','12:23',7)
INSERT INTO BILL(START_TIME,LEAVE_TIME,TICKET_ID) VALUES('11:45','12:22',8)
INSERT INTO BILL(START_TIME,LEAVE_TIME,TICKET_ID) VALUES('12:55','12:14',9)
INSERT INTO BILL(START_TIME,LEAVE_TIME,TICKET_ID) VALUES('13:15','12:16',10)
INSERT INTO BILL(START_TIME,LEAVE_TIME,TICKET_ID) VALUES('10:00','12:23',1)

--19. COMPANY
INSERT INTO COMPANY(COMPANY_NAME) VALUES('Microsoft Corporation')
INSERT INTO COMPANY(COMPANY_NAME) VALUES('Amazon.com Inc.')
INSERT INTO COMPANY(COMPANY_NAME) VALUES('Alphabet Inc. Class A')
INSERT INTO COMPANY(COMPANY_NAME) VALUES('Facebook Inc. Class A')
INSERT INTO COMPANY(COMPANY_NAME) VALUES('Alphabet Inc. Class C')
INSERT INTO COMPANY(COMPANY_NAME) VALUES('Tesla Inc')
INSERT INTO COMPANY(COMPANY_NAME) VALUES('NVIDIA Corporation')
INSERT INTO COMPANY(COMPANY_NAME) VALUES('Berkshire Hathaway Inc. Class B')
INSERT INTO COMPANY(COMPANY_NAME) VALUES('JPMorgan Chase & Co.')
INSERT INTO COMPANY(COMPANY_NAME) VALUES('Johnson & Johnson')

-- --20. SERVICE
INSERT INTO SERVICES(SERVICE_TYPE,STYLE,COMPANY_ID,CAPACITY) VALUES('S','MODERN',6,38)
INSERT INTO SERVICES(SERVICE_TYPE,STYLE,COMPANY_ID,CAPACITY) VALUES('C','OLD FASHIONED',7,22)
INSERT INTO SERVICES(SERVICE_TYPE,STYLE,COMPANY_ID,CAPACITY) VALUES('M','OLD FASHIONED',8,51)
INSERT INTO SERVICES(SERVICE_TYPE,STYLE,COMPANY_ID,CAPACITY) VALUES('B','MODERN',9,26)
INSERT INTO SERVICES(SERVICE_TYPE,STYLE,COMPANY_ID,CAPACITY) VALUES('R','MODERN',2,65)
INSERT INTO SERVICES(SERVICE_TYPE,STYLE,COMPANY_ID,CAPACITY) VALUES('S','MODERN',1,35)
INSERT INTO SERVICES(SERVICE_TYPE,STYLE,COMPANY_ID,CAPACITY) VALUES('C','OLD FASHIONED',2,56)
INSERT INTO SERVICES(SERVICE_TYPE,STYLE,COMPANY_ID,CAPACITY) VALUES('M','OLD FASHIONED',3,31)
INSERT INTO SERVICES(SERVICE_TYPE,STYLE,COMPANY_ID,CAPACITY) VALUES('B','MODERN',4,63)
INSERT INTO SERVICES(SERVICE_TYPE,STYLE,COMPANY_ID,CAPACITY) VALUES('R','MODERN',5,72)
INSERT INTO SERVICES(SERVICE_TYPE,STYLE,COMPANY_ID,CAPACITY) VALUES('S','MODERN',6,38)
INSERT INTO SERVICES(SERVICE_TYPE,STYLE,COMPANY_ID,CAPACITY) VALUES('C','OLD FASHIONED',7,22)
INSERT INTO SERVICES(SERVICE_TYPE,STYLE,COMPANY_ID,CAPACITY) VALUES('M','OLD FASHIONED',8,51)
INSERT INTO SERVICES(SERVICE_TYPE,STYLE,COMPANY_ID,CAPACITY) VALUES('B','MODERN',9,26)
INSERT INTO SERVICES(SERVICE_TYPE,STYLE,COMPANY_ID,CAPACITY) VALUES('R','MODERN',2,65)
INSERT INTO SERVICES(SERVICE_TYPE,STYLE,COMPANY_ID,CAPACITY) VALUES('S','MODERN',1,35)
INSERT INTO SERVICES(SERVICE_TYPE,STYLE,COMPANY_ID,CAPACITY) VALUES('C','OLD FASHIONED',2,56)
INSERT INTO SERVICES(SERVICE_TYPE,STYLE,COMPANY_ID,CAPACITY) VALUES('M','OLD FASHIONED',3,31)
INSERT INTO SERVICES(SERVICE_TYPE,STYLE,COMPANY_ID,CAPACITY) VALUES('B','MODERN',4,63)
INSERT INTO SERVICES(SERVICE_TYPE,STYLE,COMPANY_ID,CAPACITY) VALUES('R','MODERN',5,72)

-- --21. SPA
INSERT INTO SPA(SPA_NAME,SERVICE_ID) VALUES('SAKURA','DVS001')
INSERT INTO SPA(SPA_NAME,SERVICE_ID) VALUES('BODY HOLIDAY','DVS006')
INSERT INTO SPA(SPA_NAME,SERVICE_ID) VALUES('ANGEL SPA','DVS011')
INSERT INTO SPA(SPA_NAME,SERVICE_ID) VALUES('CLUB DE NUIT','DVS016')

-- --22. SOURVENIR
INSERT INTO SOUVENIR(SOUVENIR_NAME,SERVICE_ID) VALUES('TOYS','DVM003')
INSERT INTO SOUVENIR(SOUVENIR_NAME,SERVICE_ID) VALUES('CAKE','DVM008')
INSERT INTO SOUVENIR(SOUVENIR_NAME,SERVICE_ID) VALUES('WATCH','DVM013')
INSERT INTO SOUVENIR(SOUVENIR_NAME,SERVICE_ID) VALUES('CUP','DVM018')

-- --23. SOUVENIR BRAND
INSERT INTO SOUVENIR_BRAND(BRAND,SERVICE_ID) VALUES('FANCYSHOP','DVM003')
INSERT INTO SOUVENIR_BRAND(BRAND,SERVICE_ID) VALUES('SWEETSTORE','DVM008')
INSERT INTO SOUVENIR_BRAND(BRAND,SERVICE_ID) VALUES('SMELL YOUR LIFE','DVM013')
INSERT INTO SOUVENIR_BRAND(BRAND,SERVICE_ID) VALUES('HAVE A SIP','DVM018')

-- --24. ESTATE
INSERT INTO ESTATE(INFO,LINK,STORENAME,SERVICE_ID,ID,HEIGHT,WIDTH,COST,BID) VALUES('NONE','THIS IS A LINK','Microsoft Corporation','DVS001',1,26,20,3000,1)
INSERT INTO ESTATE(INFO,LINK,STORENAME,SERVICE_ID,ID,HEIGHT,WIDTH,COST,BID) VALUES('NONE','THIS IS A LINK','Microsoft Corporation','DVC002',2,26,20,3000,2)
INSERT INTO ESTATE(INFO,LINK,STORENAME,SERVICE_ID,ID,HEIGHT,WIDTH,COST,BID) VALUES('NONE','THIS IS A LINK','Microsoft Corporation','DVM003',3,26,20,3000,2)
INSERT INTO ESTATE(INFO,LINK,STORENAME,SERVICE_ID,ID,HEIGHT,WIDTH,COST,BID) VALUES('NONE','THIS IS A LINK','Microsoft Corporation','DVB004',4,26,20,3000,2)
INSERT INTO ESTATE(INFO,LINK,STORENAME,SERVICE_ID,ID,HEIGHT,WIDTH,COST,BID) VALUES('NONE','THIS IS A LINK','Microsoft Corporation','DVR005',5,26,20,3000,3)
INSERT INTO ESTATE(INFO,LINK,STORENAME,SERVICE_ID,ID,HEIGHT,WIDTH,COST,BID) VALUES('NONE','THIS IS A LINK','Microsoft Corporation','DVS006',6,26,20,3000,3)
INSERT INTO ESTATE(INFO,LINK,STORENAME,SERVICE_ID,ID,HEIGHT,WIDTH,COST,BID) VALUES('NONE','THIS IS A LINK','Microsoft Corporation','DVC007',7,26,20,3000,4)
INSERT INTO ESTATE(INFO,LINK,STORENAME,SERVICE_ID,ID,HEIGHT,WIDTH,COST,BID) VALUES('NONE','THIS IS A LINK','Microsoft Corporation','DVM008',8,26,20,3000,5)
INSERT INTO ESTATE(INFO,LINK,STORENAME,SERVICE_ID,ID,HEIGHT,WIDTH,COST,BID) VALUES('NONE','THIS IS A LINK','Amazon.com Inc.','DVB009',9,30,26,2500,6)
INSERT INTO ESTATE(INFO,LINK,STORENAME,SERVICE_ID,ID,HEIGHT,WIDTH,COST,BID) VALUES('NONE','THIS IS A LINK','Alphabet Inc. Class A','DVR010',10,26,29,2200,4)
INSERT INTO ESTATE(INFO,LINK,STORENAME,SERVICE_ID,ID,HEIGHT,WIDTH,COST,BID) VALUES('NONE','THIS IS A LINK','Facebook Inc. Class A','DVS011',11,26,27,3400,5)
INSERT INTO ESTATE(INFO,LINK,STORENAME,SERVICE_ID,ID,HEIGHT,WIDTH,COST,BID) VALUES('NONE','THIS IS A LINK','Alphabet Inc. Class C','DVC012',12,19,18,3700,6)
INSERT INTO ESTATE(INFO,LINK,STORENAME,SERVICE_ID,ID,HEIGHT,WIDTH,COST,BID) VALUES('NONE','THIS IS A LINK','Tesla Inc','DVM013',13,16,24,4500,7)
INSERT INTO ESTATE(INFO,LINK,STORENAME,SERVICE_ID,ID,HEIGHT,WIDTH,COST,BID) VALUES('NONE','THIS IS A LINK','NVIDIA Corporation','DVB014',14,30,24,4200,8)
INSERT INTO ESTATE(INFO,LINK,STORENAME,SERVICE_ID,ID,HEIGHT,WIDTH,COST,BID) VALUES('NONE','THIS IS A LINK','Berkshire Hathaway Inc. Class B','DVR015',15,20,26,4100,9)
INSERT INTO ESTATE(INFO,LINK,STORENAME,SERVICE_ID,ID,HEIGHT,WIDTH,COST,BID) VALUES('NONE','THIS IS A LINK','Berkshire Hathaway Inc. Class B','DVS016',16,20,26,4100,3)
INSERT INTO ESTATE(INFO,LINK,STORENAME,SERVICE_ID,ID,HEIGHT,WIDTH,COST,BID) VALUES('NONE','THIS IS A LINK','Berkshire Hathaway Inc. Class B','DVC017',17,20,26,4100,7)
INSERT INTO ESTATE(INFO,LINK,STORENAME,SERVICE_ID,ID,HEIGHT,WIDTH,COST,BID) VALUES('NONE','THIS IS A LINK','Berkshire Hathaway Inc. Class B','DVM018',18,20,26,4100,7)
INSERT INTO ESTATE(INFO,LINK,STORENAME,SERVICE_ID,ID,HEIGHT,WIDTH,COST,BID) VALUES('NONE','THIS IS A LINK','Berkshire Hathaway Inc. Class B','DVB019',19,20,26,4100,6)
INSERT INTO ESTATE(INFO,LINK,STORENAME,SERVICE_ID,ID,HEIGHT,WIDTH,COST,BID) VALUES('NONE','THIS IS A LINK','Berkshire Hathaway Inc. Class B','DVR020',20,20,26,4100,5)

--25. STORE PIC
INSERT INTO STORE_PIC(LINK,ID,BID) VALUES('https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.booking.com%2Fresorts%2Fcountry%2Fvn.vi.html&psig=AOvVaw2unKhUnbH5GFSpJdX_764D&ust=1669825624498000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCPC48qHn0_sCFQAAAAAdAAAAABAE',1,1)
INSERT INTO STORE_PIC(LINK,ID,BID) VALUES('https://www.google.com/url?sa=i&url=https%3A%2F%2Facihome.vn%2Fcac-phan-khu-chuc-nang-tai-resort-len-bo-tri-the-nao%2F&psig=AOvVaw2unKhUnbH5GFSpJdX_764D&ust=1669825624498000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCPC48qHn0_sCFQAAAAAdAAAAABAJ',3,2)
INSERT INTO STORE_PIC(LINK,ID,BID) VALUES('https://www.google.com/url?sa=i&url=https%3A%2F%2Ftravelgear.vn%2Fblog%2Fresort-la-gi%2F&psig=AOvVaw2unKhUnbH5GFSpJdX_764D&ust=1669825624498000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCPC48qHn0_sCFQAAAAAdAAAAABAO',4,2)
INSERT INTO STORE_PIC(LINK,ID,BID) VALUES('https://fusionhotelgroup.com/wp-content/uploads/2019/04/Fusion-Resort-Quang-Binh-Dong-Hoi-outdoor-1.jpg',5,3)
INSERT INTO STORE_PIC(LINK,ID,BID) VALUES('https://www.google.com/url?sa=i&url=https%3A%2F%2Fmotortrip.vn%2Fluu-tru%2Fresort-la-gi&psig=AOvVaw2unKhUnbH5GFSpJdX_764D&ust=1669825624498000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCPC48qHn0_sCFQAAAAAdAAAAABAd',6,3)
INSERT INTO STORE_PIC(LINK,ID,BID) VALUES('https://www.google.com/url?sa=i&url=https%3A%2F%2Fvnexpress.net%2Fkhach-san-resort-ca-nuoc-tung-uu-dai-moi-4153345.html&psig=AOvVaw2unKhUnbH5GFSpJdX_764D&ust=1669825624498000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCPC48qHn0_sCFQAAAAAdAAAAABAi',7,4)
INSERT INTO STORE_PIC(LINK,ID,BID) VALUES('https://www.google.com/url?sa=i&url=https%3A%2F%2Fdulich.laodong.vn%2Fnghi-duong%2F10-resort-tot-nhat-viet-nam-1064744.html&psig=AOvVaw2unKhUnbH5GFSpJdX_764D&ust=1669825624498000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCPC48qHn0_sCFQAAAAAdAAAAABAn',8,5)
INSERT INTO STORE_PIC(LINK,ID,BID) VALUES('https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.agoda.com%2Fvi-vn%2Fpacific-cebu-resort%2Fhotel%2Fcebu-ph.html&psig=AOvVaw2unKhUnbH5GFSpJdX_764D&ust=1669825624498000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCPC48qHn0_sCFQAAAAAdAAAAABAs',9,6)


--26. TIME ACTIVITY
INSERT INTO TIME_ACTIVITY(START_TIME,END_TIME,ID,BID) VALUES('8:10','20:00',1,1)
INSERT INTO TIME_ACTIVITY(START_TIME,END_TIME,ID,BID) VALUES('8:20','20:00',3,2)
INSERT INTO TIME_ACTIVITY(START_TIME,END_TIME,ID,BID) VALUES('8:30','20:00',4,2)
INSERT INTO TIME_ACTIVITY(START_TIME,END_TIME,ID,BID) VALUES('8:40','20:00',5,3)
INSERT INTO TIME_ACTIVITY(START_TIME,END_TIME,ID,BID) VALUES('8:50','20:00',6,3)
INSERT INTO TIME_ACTIVITY(START_TIME,END_TIME,ID,BID) VALUES('10:00','20:00',7,4)
INSERT INTO TIME_ACTIVITY(START_TIME,END_TIME,ID,BID) VALUES('16:00','20:00',8,5)
INSERT INTO TIME_ACTIVITY(START_TIME,END_TIME,ID,BID) VALUES('13:00','20:00',9,6)