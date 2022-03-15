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