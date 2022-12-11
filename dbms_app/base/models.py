# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class Bedinfo(models.Model):
    bed_tid = models.OneToOneField('Roomtype', models.DO_NOTHING, db_column='BED_TID', primary_key=True)  # Field name made lowercase.
    size = models.FloatField(db_column='SIZE')  # Field name made lowercase.
    capacity = models.IntegerField(db_column='CAPACITY')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'BEDINFO'
        unique_together = (('bed_tid', 'size'),)


class Bill(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    bill_id = models.CharField(db_column='BILL_ID', max_length=16, db_collation='SQL_Latin1_General_CP1_CI_AS', blank=True, null=True)  # Field name made lowercase.
    start_time = models.TimeField(db_column='START_TIME')  # Field name made lowercase.
    leave_time = models.TimeField(db_column='LEAVE_TIME')  # Field name made lowercase.
    ticket = models.ForeignKey('Bookticket', models.DO_NOTHING, db_column='TICKET_ID')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'BILL'


class BillService(models.Model):
    bill_cid = models.OneToOneField('Customer', models.DO_NOTHING, db_column='BILL_CID', primary_key=True)  # Field name made lowercase.
    bill_package_name = models.ForeignKey('Package', models.DO_NOTHING, db_column='BILL_PACKAGE_NAME')  # Field name made lowercase.
    date_buy = models.DateTimeField(db_column='DATE_BUY')  # Field name made lowercase.
    used_date = models.IntegerField(db_column='USED_DATE', blank=True, null=True)  # Field name made lowercase.
    start_day = models.DateTimeField(db_column='START_DAY')  # Field name made lowercase.
    total_cost_kvnd_field = models.IntegerField(db_column='TOTAL_COST (kVND)')  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.

    class Meta:
        managed = False
        db_table = 'BILL_SERVICE'
        unique_together = (('bill_cid', 'bill_package_name', 'start_day'),)


class Bookticket(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    booking_date = models.DateTimeField(db_column='BOOKING_DATE')  # Field name made lowercase.
    ticket_id = models.CharField(db_column='TICKET_ID', max_length=16, db_collation='SQL_Latin1_General_CP1_CI_AS', blank=True, null=True)  # Field name made lowercase.
    depart_date = models.DateTimeField(db_column='DEPART_DATE')  # Field name made lowercase.
    leave_date = models.DateTimeField(db_column='LEAVE_DATE')  # Field name made lowercase.
    statuss = models.IntegerField(db_column='STATUSS')  # Field name made lowercase.
    total_cost_kvnd_field = models.IntegerField(db_column='TOTAL_COST (kVND)')  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    cid = models.ForeignKey('Customer', models.DO_NOTHING, db_column='CID')  # Field name made lowercase.
    package_name = models.ForeignKey('Package', models.DO_NOTHING, db_column='PACKAGE_NAME')  # Field name made lowercase.
    capacity = models.IntegerField(db_column='CAPACITY')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'BOOKTICKET'


class Branch(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    bid = models.CharField(db_column='BID', unique=True, max_length=5, db_collation='SQL_Latin1_General_CP1_CI_AS')  # Field name made lowercase.
    province = models.CharField(db_column='PROVINCE', max_length=255, db_collation='SQL_Latin1_General_CP1_CI_AS')  # Field name made lowercase.
    addr = models.CharField(db_column='ADDR', max_length=255, db_collation='SQL_Latin1_General_CP1_CI_AS')  # Field name made lowercase.
    phonenum = models.CharField(db_column='PHONENUM', unique=True, max_length=255, db_collation='SQL_Latin1_General_CP1_CI_AS')  # Field name made lowercase.
    email = models.CharField(db_column='EMAIL', max_length=255, db_collation='SQL_Latin1_General_CP1_CI_AS')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'BRANCH'


class BranchHaveRoomtype(models.Model):
    bhr_bid = models.OneToOneField(Branch, models.DO_NOTHING, db_column='BHR_BID', primary_key=True)  # Field name made lowercase.
    bhr_tid = models.ForeignKey('Roomtype', models.DO_NOTHING, db_column='BHR_TID')  # Field name made lowercase.
    cost_kvnd_field = models.IntegerField(db_column='COST (kVND)')  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.

    class Meta:
        managed = False
        db_table = 'BRANCH_HAVE_ROOMTYPE'
        unique_together = (('bhr_bid', 'bhr_tid'),)


class BranchPic(models.Model):
    branch_bid = models.OneToOneField(Branch, models.DO_NOTHING, db_column='BRANCH_BID', primary_key=True)  # Field name made lowercase.
    link = models.CharField(db_column='LINK', max_length=255, db_collation='SQL_Latin1_General_CP1_CI_AS')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'BRANCH_PIC'
        unique_together = (('branch_bid', 'link'),)


class Company(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    company_id = models.CharField(db_column='COMPANY_ID', unique=True, max_length=6, db_collation='SQL_Latin1_General_CP1_CI_AS', blank=True, null=True)  # Field name made lowercase.
    company_name = models.CharField(db_column='COMPANY_NAME', max_length=255, db_collation='SQL_Latin1_General_CP1_CI_AS', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'COMPANY'


class Customer(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    cid = models.CharField(db_column='CID', max_length=8, db_collation='SQL_Latin1_General_CP1_CI_AS', blank=True, null=True, editable=False)  # Field name made lowercase.
    cmnd_cccd = models.CharField(db_column='CMND/CCCD', unique=True, max_length=20, db_collation='SQL_Latin1_General_CP1_CI_AS')  # Field name made lowercase. Field renamed to remove unsuitable characters.
    fullname = models.CharField(db_column='FULLNAME', max_length=255, db_collation='SQL_Latin1_General_CP1_CI_AS')  # Field name made lowercase.
    customer_phonenumber = models.CharField(db_column='CUSTOMER_PHONENUMBER', unique=True, max_length=12, db_collation='SQL_Latin1_General_CP1_CI_AS')  # Field name made lowercase.
    customer_email = models.CharField(db_column='CUSTOMER_EMAIL', unique=True, max_length=255, db_collation='SQL_Latin1_General_CP1_CI_AS', blank=True, null=True)  # Field name made lowercase.
    username = models.CharField(db_column='USERNAME', unique=True, max_length=255, db_collation='SQL_Latin1_General_CP1_CI_AS')  # Field name made lowercase.
    score = models.IntegerField(db_column='SCORE')  # Field name made lowercase.
    ctype = models.IntegerField(db_column='CTYPE')  # Field name made lowercase.
    pass_field = models.CharField(db_column='PASS', max_length=255, db_collation='SQL_Latin1_General_CP1_CI_AS', blank=True, null=True)  # Field name made lowercase. Field renamed because it was a Python reserved word.
    class Meta:
        managed = False
        db_table = 'CUSTOMER'


class Estate(models.Model):
    bid = models.OneToOneField(Branch, models.DO_NOTHING, db_column='BID', primary_key=True)  # Field name made lowercase.
    id = models.IntegerField(db_column='ID')  # Field name made lowercase.
    height = models.FloatField(db_column='HEIGHT')  # Field name made lowercase.
    width = models.FloatField(db_column='WIDTH')  # Field name made lowercase.
    cost = models.IntegerField(db_column='COST')  # Field name made lowercase.
    info = models.CharField(db_column='INFO', max_length=255, db_collation='SQL_Latin1_General_CP1_CI_AS', blank=True, null=True)  # Field name made lowercase.
    service = models.ForeignKey('Services', models.DO_NOTHING, db_column='SERVICE_ID')  # Field name made lowercase.
    link = models.CharField(db_column='LINK', max_length=255, db_collation='SQL_Latin1_General_CP1_CI_AS')  # Field name made lowercase.
    storename = models.CharField(db_column='STORENAME', max_length=255, db_collation='SQL_Latin1_General_CP1_CI_AS', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ESTATE'
        unique_together = (('bid', 'id'),)


class Package(models.Model):
    package_name = models.CharField(db_column='PACKAGE_NAME', primary_key=True, max_length=255, db_collation='SQL_Latin1_General_CP1_CI_AS')  # Field name made lowercase.
    num_days = models.IntegerField(db_column='NUM_DAYS')  # Field name made lowercase.
    num_guests = models.IntegerField(db_column='NUM_GUESTS')  # Field name made lowercase.
    cost_kvnd_field = models.IntegerField(db_column='COST (kVND)')  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.

    class Meta:
        managed = False
        db_table = 'PACKAGE'


class ProvideSupply(models.Model):
    provide_supplier = models.ForeignKey('Supplier', models.DO_NOTHING, db_column='PROVIDE_SUPPLIER_ID')  # Field name made lowercase.
    provide_supply_bid = models.ForeignKey(Branch, models.DO_NOTHING, db_column='PROVIDE_SUPPLY_BID')  # Field name made lowercase.
    provide_supplyid = models.OneToOneField('SupplyType', models.DO_NOTHING, db_column='PROVIDE_SUPPLYID', primary_key=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'PROVIDE_SUPPLY'
        unique_together = (('provide_supplyid', 'provide_supply_bid'),)


class Room(models.Model):
    room_bid = models.OneToOneField('Zonee', models.DO_NOTHING, db_column='ROOM_BID', primary_key=True, related_name='room_bid')  # Field name made lowercase.
    roomid = models.CharField(db_column='ROOMID', max_length=3, db_collation='SQL_Latin1_General_CP1_CI_AS')  # Field name made lowercase.
    room_tid = models.ForeignKey('Roomtype', models.DO_NOTHING, db_column='ROOM_TID')  # Field name made lowercase.
    room_zname = models.ForeignKey('Zonee', models.DO_NOTHING, db_column='ROOM_ZNAME')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ROOM'
        unique_together = (('room_bid', 'room_bid', 'roomid'),)


class Roomtype(models.Model):
    tid = models.AutoField(db_column='TID', primary_key=True)  # Field name made lowercase.
    typename = models.CharField(db_column='TYPENAME', max_length=255, db_collation='SQL_Latin1_General_CP1_CI_AS')  # Field name made lowercase.
    area_m2_field = models.FloatField(db_column='AREA (m2)')  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    numguest = models.IntegerField(db_column='NUMGUEST')  # Field name made lowercase.
    infor = models.CharField(db_column='INFOR', max_length=255, db_collation='SQL_Latin1_General_CP1_CI_AS', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ROOMTYPE'


class RoomRent(models.Model):
    room_ticket = models.OneToOneField(Bookticket, models.DO_NOTHING, db_column='ROOM_TICKET_ID', primary_key=True)  # Field name made lowercase.
    room_rent_bid = models.ForeignKey(Room, models.DO_NOTHING, db_column='ROOM_RENT_BID', related_name='room_rent_bid')  # Field name made lowercase.
    room_rent = models.ForeignKey(Room, models.DO_NOTHING, db_column='ROOM_RENT_ID')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ROOM_RENT'
        unique_together = (('room_ticket', 'room_rent_bid', 'room_rent'),)


class Services(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    service_type = models.CharField(db_column='SERVICE_TYPE', max_length=1, db_collation='SQL_Latin1_General_CP1_CI_AS', blank=True, null=True)  # Field name made lowercase.
    service_id = models.CharField(db_column='SERVICE_ID', unique=True, max_length=6, db_collation='SQL_Latin1_General_CP1_CI_AS', blank=True, null=True)  # Field name made lowercase.
    capacity = models.IntegerField(db_column='CAPACITY')  # Field name made lowercase.
    style = models.CharField(db_column='STYLE', max_length=255, db_collation='SQL_Latin1_General_CP1_CI_AS', blank=True, null=True)  # Field name made lowercase.
    company = models.ForeignKey(Company, models.DO_NOTHING, db_column='COMPANY_ID')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'SERVICES'


class Souvenir(models.Model):
    service_id = models.CharField(db_column='SERVICE_ID', max_length=6, db_collation='SQL_Latin1_General_CP1_CI_AS')  # Field name made lowercase.
    souvenir_name = models.CharField(db_column='SOUVENIR_NAME', unique=True, max_length=5, db_collation='SQL_Latin1_General_CP1_CI_AS')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'SOUVENIR'


class SouvenirBrand(models.Model):
    service = models.OneToOneField(Services, models.DO_NOTHING, db_column='SERVICE_ID', primary_key=True)  # Field name made lowercase.
    brand = models.CharField(db_column='BRAND', max_length=255, db_collation='SQL_Latin1_General_CP1_CI_AS')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'SOUVENIR_BRAND'
        unique_together = (('service', 'brand'),)


class Spa(models.Model):
    service = models.OneToOneField(Services, models.DO_NOTHING, db_column='SERVICE_ID', primary_key=True)  # Field name made lowercase.
    spa_name = models.CharField(db_column='SPA_NAME', unique=True, max_length=255, db_collation='SQL_Latin1_General_CP1_CI_AS')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'SPA'
        unique_together = (('service', 'spa_name'),)


class StorePic(models.Model):
    bid = models.OneToOneField(Estate, models.DO_NOTHING, db_column='BID', primary_key=True, related_name='storepic_bid')  # Field name made lowercase.
    id = models.ForeignKey(Estate, models.DO_NOTHING, db_column='ID')  # Field name made lowercase.
    link = models.CharField(db_column='LINK', max_length=255, db_collation='SQL_Latin1_General_CP1_CI_AS')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'STORE_PIC'
        unique_together = (('bid', 'id', 'link'),)


class Supplier(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    supplier_id = models.CharField(db_column='SUPPLIER_ID', unique=True, max_length=7, db_collation='SQL_Latin1_General_CP1_CI_AS', blank=True, null=True)  # Field name made lowercase.
    supplier_name = models.CharField(db_column='SUPPLIER_NAME', max_length=255, db_collation='SQL_Latin1_General_CP1_CI_AS')  # Field name made lowercase.
    supplier_email = models.CharField(db_column='SUPPLIER_EMAIL', max_length=255, db_collation='SQL_Latin1_General_CP1_CI_AS', blank=True, null=True)  # Field name made lowercase.
    supplier_addres = models.CharField(db_column='SUPPLIER_ADDRES', max_length=255, db_collation='SQL_Latin1_General_CP1_CI_AS')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'SUPPLIER'


class Supply(models.Model):
    supply_bid = models.OneToOneField(Room, models.DO_NOTHING, db_column='SUPPLY_BID', related_name='supply_bid')  # Field name made lowercase.
    supplyid = models.ForeignKey('SupplyType', models.DO_NOTHING, db_column='SUPPLYID')  # Field name made lowercase.
    stt_id = models.AutoField(db_column='STT_ID', primary_key=True)  # Field name made lowercase.
    supply_roomid = models.ForeignKey(Room, models.DO_NOTHING, db_column='SUPPLY_ROOMID')  # Field name made lowercase.
    statuss = models.CharField(db_column='STATUSS', max_length=255, db_collation='SQL_Latin1_General_CP1_CI_AS', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'SUPPLY'
        unique_together = (('supply_bid', 'supply_bid', 'supplyid', 'stt_id'),)


class SupplyInRoom(models.Model):
    sir_supplyid = models.OneToOneField('SupplyType', models.DO_NOTHING, db_column='SIR_SUPPLYID', primary_key=True)  # Field name made lowercase.
    sir_tid = models.ForeignKey(Roomtype, models.DO_NOTHING, db_column='SIR_TID')  # Field name made lowercase.
    num_supply = models.IntegerField(db_column='NUM_SUPPLY')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'SUPPLY_IN_ROOM'
        unique_together = (('sir_supplyid', 'sir_tid'),)


class SupplyType(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    supply_type_id = models.CharField(db_column='SUPPLY_TYPE_ID', unique=True, max_length=6, db_collation='SQL_Latin1_General_CP1_CI_AS', blank=True, null=True)  # Field name made lowercase.
    supply_type_name = models.CharField(db_column='SUPPLY_TYPE_NAME', max_length=255, db_collation='SQL_Latin1_General_CP1_CI_AS')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'SUPPLY_TYPE'


class TimeActivity(models.Model):
    bid = models.OneToOneField(Estate, models.DO_NOTHING, db_column='BID', primary_key=True, related_name='time_bid')  # Field name made lowercase.
    id = models.ForeignKey(Estate, models.DO_NOTHING, db_column='ID')  # Field name made lowercase.
    start_time = models.TimeField(db_column='START_TIME')  # Field name made lowercase.
    end_time = models.TimeField(db_column='END_TIME')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'TIME_ACTIVITY'
        unique_together = (('bid', 'id', 'start_time'),)


class Zonee(models.Model):
    zone_bid = models.OneToOneField(Branch, models.DO_NOTHING, db_column='ZONE_BID', primary_key=True)  # Field name made lowercase.
    zname = models.CharField(db_column='ZNAME', max_length=255, db_collation='SQL_Latin1_General_CP1_CI_AS')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ZONEE'
        unique_together = (('zone_bid', 'zname'),)
