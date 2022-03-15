create table KPI_STG_CHANNEL(
    DATE_CREATED date,
    IS_RECORD_INACTIVE varchar2(10),
    LAST_MODIFIED_DATE date,
    LIST_ID number,
    LIST_ITEM_NAME varchar2(20) 
);

SELECT * FROM KPI_STG_CHANNEL;



create table KPI_STG_TRANSACTIONS (
    TRANSACTION_ID number,
    TRANID number,
    TRANSACTION_TYPE varchar2(50),
    TRANDATE date,
    CHANNEL_ID number
);

SELECT * FROM KPI_STG_TRANSACTIONS;

create table KPI_STG_ITEMS (
    ITEM_ID number,
    SKU varchar2(100),
    TYPE_NAME varchar2(30),
    SALESDESCRIPTION varchar2(100),
    CLASS_ID number,
    WS_MERCHANDISE_DEPARTMENT_ID number,
    WS_MERCHANDISE_COLLECTION_ID number,
    WS_MERCHANDISE_CLASS_ID number,
    WS_MERCHANDISE_SUBCLASS_ID number
);

SELECT * FROM KPI_STG_ITEMS;


create table KPI_STG_DEPARTMENTS (
    DATE_LAST_MODIFIED date,
    DEPARTMENT_ID number,
    ISINACTIVE varchar2(5),
    NAME varchar2(50),
    WS_DESCRIPTION varchar2(50)
);

SELECT * FROM KPI_STG_DEPARTMENTS;

drop table KPI_STG_DEPARTMENTS;


create table KPI_STG_LOCATIONS (
    LOCATION_ID number,
    ADDRESS varchar2(120),
    CITY varchar2(50),
    COUNTRY varchar2(50),
    DATE_LAST_MODIFIED date,
    FULL_NAME varchar2(60),
    ISINACTIVE varchar2(5),
    NAME varchar2(50)
);
select * from KPI_STG_LOCATIONS;
drop table KPI_STG_LOCATIONS;

create table KPI_STG_CLASSES (
    CLASS_ID number,
    DATE_LAST_MODIFIED date,
    FULL_NAME varchar2(30),
    ISINACTIVE varchar2(5),
    NAME varchar2(5)
);

SELECT * FROM KPI_STG_CLASSES;

drop table KPI_STG_CLASSES;
desc KPI_STG_CLASSES;

create table KPI_STG_TRANSACTIONS_LINES (
    TRANSACTION_ID number,
    TRANSACTION_LINE_ID number,
    LOCATION_ID number,
    DEPARTMENT_ID number,
    ITEM_ID number,
    AMOUNT number,
    COST number,
    UNITS number
);
SELECT * FROM KPI_STG_TRANSACTIONS_LINES;
commit all;

create table KPI_STG_ITEM_MERCHANDISE_DEPAR (
    ITEM_MERCHANDISE_DEPARTMENT_ID number,
    DESCRIPTION varchar2(20),
    ITEM_MERCHANDISE_DEPARTMENT_NA varchar2(10)
);
SELECT * FROM KPI_STG_ITEM_MERCHANDISE_DEPAR;
drop table KPI_STG_ITEM_MERCHANDISE_DEPAR;

create table KPI_STG_ITEM_MERCHANDISE_COLLE (
    ITEM_MERCHANDISE_COLLECTION_ID number,
    DESCRIPTION varchar2(50),
    ITEM_MERCHANDISE_COLLECTION_NA varchar2(50)
);

drop table KPI_STG_ITEM_MERCHANDISE_COLLE;

create table KPI_STG_ITEM_MERCHANDISE_SUBCL (
    ITEM_MERCHANDISE_SUBCLASS_ID number,
    DESCRIPTION varchar2(50),
    ITEM_MERCHANDISE_SUBCLASS_NAME varchar2(10)
);
drop table kpi_stg_item_merchandise_subcl;
select * from KPI_STG_ITEM_MERCHANDISE_SUBCL;

create table KPI_STG_ITEM_MERCHANDISE_CLASS (
    ITEM_MERCHANDISE_CLASS_ID number,
    DESCRIPTION varchar2(50),
    ITEM_MERCHANDISE_CLASS_NAME varchar2(5)
);

SELECT * FROM KPI_STG_ITEM_MERCHANDISE_CLASS;

commit;

---<><><><><><><><><><<><><><><><><><><><><><><><><>><><












create table KPI_CHANNEL_DIM (
    DATE_CREATED date,
    IS_RECORD_INACTIVE varchar2(100),
    LAST_MODIFIED_DATE date,
    LIST_ID number(20,0),
    LIST_ITEM_NAME varchar2(20),
    KPI_DW_SKEY number(20,0),
    KPI_DW_INSERT_DATE date,
    KPI_DW_UPDATE_DATE date
);





INSERT INTO kpi_channel_dim (date_created,is_record_inactive,last_modified_date,list_id,list_item_name)
SELECT date_created,is_record_inactive,last_modified_date,list_id,list_item_name
FROM kpi_stg_channel ;




select * from kpi_channel_dim;

UPDATE kpi_channel_dim
SET kpi_dw_insert_date=sysdate,
WHERE list_id is not null;

UPDATE kpi_channel_dim
SET kpi_dw_update_date=sysdate,
WHERE list_id is not null;


delete from kpi_channel_dim where kpi_dw_insert_date is not null;

create sequence  KPI_DW_SKEY;

update KPI_channel_DIM set KPI_DW_SKEY=KPI_DW_SKEY.nextval

update KPI_channel_DIM set kpi_dw_insert_date=sysdate;

alter table KPI_channel_DIM modify KPI_DW_INSERT_DATE default sysdate ;
alter table KPI_channel_DIM modify KPI_DW_INSERT_DATE default sysdate; 

insert into kpi_channel_dim (KPI_DW_INSERT_DATE,KPI_DW_INSERT_DATE) values(sysdate,sysdate);

insert into kpi_channel_dim(KPI_DW_INSERT_DATE)
    values (sysdate) 
    
select * from kpi_channel_dim



commit

drop table kpi_channel_dim;















