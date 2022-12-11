USE RESORTDB
GO

DBCC CHECKIDENT (BRANCH, RESEED, 0)
DBCC CHECKIDENT (BOOKTICKET, RESEED, 0)
DBCC CHECKIDENT (CUSTOMER, RESEED, 0)

DELETE FROM BRANCH
DELETE FROM BRANCH_PIC
DELETE FROM ZONEE 
DELETE FROM ROOMTYPE 
DELETE FROM BEDINFO
DELETE FROM BRANCH_HAVE_ROOMTYPE
DELETE FROM ROOM
DELETE FROM SUPPLY_TYPE
DELETE FROM SUPPLY_IN_ROOM
DELETE FROM SUPPLY    
DELETE FROM SUPPLIER
DELETE FROM PROVIDE_SUPPLY
DELETE FROM CUSTOMER
DELETE FROM PACKAGE
DELETE FROM BILL_SERVICE
DELETE FROM BOOKTICKET
DELETE FROM ROOM_RENT
DELETE FROM BILL
DELETE FROM COMPANY
DELETE FROM SERVICES
DELETE FROM SPA
DELETE FROM SOUVENIR
DELETE FROM SOUVENIR_BRAND
DELETE FROM ESTATE
DELETE FROM STORE_PIC
DELETE FROM TIME_ACTIVITY 