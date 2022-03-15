---------KPI_LOCATION_DIM----
create table KPI_LOCATION_DIM(
     LOCATION_ID NUMBER(20,0),
     ADDRESS  VARCHAR(100),
     CITY VARCHAR(50),
     COUNTRY VARCHAR(50),
     DATE_LAST_MODIFIED DATE,
     FULL_NAME VARCHAR(50),
     ISINACTIVE VARCHAR(5),
     NAME VARCHAR(50),
     KPI_DW_SKEY NUMBER(20,0),
     KPI_DW_INSERT_DATE DATE,
     KPI_DW_UPDATE_DATE DATE
);


-----------KPI_TRANSACTION_LINE_FACT------------
CREATE TABLE KPI_TRANSACTION_LINE_FACT(
     TRANSACTION_ID NUMBER(20,0),
     TRANSACTION_LINE_ID NUMBER(20,0),
     TRANID VARCHAR(30),
     TRANSACTION_TYPE VARCHAR(50),
     TRANDATE DATE,
     KPI_CHANNEL_SKEY NUMBER(20,0),
     KPI_LOCATION_SKEY NUMBER(20,0),
     KPI_DEPARTMENT_SKEY NUMBER(20,0),
     KPI_ITEM_SKEY NUMBER(20,0),
     AMOUNT NUMBER(8,2),
     COST NUMBER(8,2),
     UNITS NUMBER(5,0),
     KPI_DW_SKEY NUMBER(20,0)
);




-------------KPI_CHANNEL_DIM----

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



---------KPI_CLASS_DIM-------------

create table KPI_CLASS_DIM (
    CLASS_ID number(20,0),
    DATE_LAST_MODIFIED date,
    FULL_NAME varchar2(30),
    ISINACTIVE varchar2(5),
    NAME varchar2(5),
    KPI_DW_SKEY number(20,0),
    KPI_DW_INSERT_DATE date,
    KPI_DW_UPDATE_DATE date
);





-------KPI_ITEM_MERCHANDISE_DEPTARMEN_DIM

create table KPI_ITEM_MERCHANDISE_DEPAR_DIM (
    ITEM_MERCHANDISE_DEPARTMENT_ID number(20,0),
    DESCRIPTION varchar2(50),
    ITEM_MERCHANDISE_DEPARTMENT_NA varchar2(10),
    KPI_DW_SKEY number(20,0),
    KPI_DW_INSERT_DATE date,
    KPI_DW_UPDATE_DATE date
);





----------------KPI_ITEM_MERCHANDISE_COL_DIM--
create table KPI_ITEM_MERCHANDISE_COL_DIM (
    ITEM_MERCHANDISE_COLLECTION_ID number(20,0),
    DESCRIPTION varchar2(100),
    ITEM_MERCHANDISE_COLLECTION_NA varchar2(100),
    KPI_DW_SKEY number(20,0),
    KPI_DW_INSERT_DATE date,
    KPI_DW_UPDATE_DATE date
);




------------------KPI_ITEM_MERCHANDISE_CLASS_DIM--
create table KPI_ITEM_MERCHANDISE_CLASS_DIM (
    ITEM_MERCHANDISE_CLASS_ID number(20,0),
    DESCRIPTION varchar2(100),
    ITEM_MERCHANDISE_CLASS_NAME varchar2(100),
    KPI_DW_SKEY number(20,0),
    KPI_DW_INSERT_DATE date,
    KPI_DW_UPDATE_DATE date
);




---------------KPI_ITEM_MERCHANDISE_SUBCL_DIM---
create table KPI_ITEM_MERCHANDISE_SUBCL_DIM (
    ITEM_MERCHANDISE_SUBCLASS_ID number(20,0),
    DESCRIPTION varchar2(100),
    ITEM_MERCHANDISE_SUBCLASS_NAME varchar2(100),
    KPI_DW_SKEY number(20,0),
    KPI_DW_INSERT_DATE date,
    KPI_DW_UPDATE_DATE date
);



-------KPI_DEPARTMENT_DIM---
create table KPI_DEPARTMENT_DIM	 (
    DATE_LAST_MODIFIED date,
    DEPARTMENT_ID number(20,0),
    ISINACTIVE varchar2(100),
    NAME varchar2(10),
    WS_DESCRIPTION varchar2(100),
    KPI_DW_SKEY number(20,0),
    KPI_DW_INSERT_DATE date,
    KPI_DW_UPDATE_DATE date
);






--------KPI_ITEM_DIM---
create table KPI_ITEM_DIM (
    ITEM_ID number(20,0),
    SKU varchar2(100),
    TYPE_NAME varchar2(100),
    SALESDESCRIPTION varchar2(100),
    KPI_DW_SKEY number(20,0),
    KPI_DW_INSERT_DATE date,
    KPI_DW_UPDATE_DATE date,
    KPI_CLASS_SKEY number(20,0),
    WS_MERCHANDISE_DEPARTMENT_SKEY number(20,0),
    WS_MERCHANDISE_COLLECTION_SKEY number(20,0),
    WS_MERCHANDISE_CLASS_SKEY number(20,0),
    WS_MERCHANDISE_SUBCLASS_SKEY number(20,0)
    
);

----------------<<<<<<<<<<<<<<<<<SEQUENCE>>>>>>>>>>>>>>>-----------------

--create sequence  KPI_DW_SKEY;

--drop sequence  KPI_DW_SKEY;

select * from kpi_class_dim;
create sequence t10;

UPDATE kpi_class_dim
SET kpi_dw_update_date=sysdate,kpi_dw_insert_date=sysdate
WHERE  kpi_dw_skey is not null;

update KPI_CLASS_DIM set KPI_DW_SKEY=t10.nextval;

alter table KPI_CLASS_DIM modify KPI_DW_INSERT_DATE default sysdate;
alter table KPI_CLASS_DIM modify KPI_DW_UPDATE_DATE default sysdate;
------9
create sequence t1;

update KPI_LOCATION_DIM set KPI_DW_SKEY=t1.nextval;

alter table KPI_LOCATION_DIM modify KPI_DW_INSERT_DATE default sysdate;
alter table KPI_LOCATION_DIM modify KPI_DW_UPDATE_DATE default sysdate;

select * from kpi_location_dim;
------------------------------
-----10
create sequence t2;

update KPI_TRANSACTION_LINE_FACT set KPI_DW_SKEY=t2.nextval;


alter table KPI_TRANSACTION_LINE_FACT modify KPI_DW_INSERT_DATE default sysdate;
alter table KPI_TRANSACTION_LINE_FACT modify KPI_DW_UPDATE_DATE default sysdate;


----------------------------------
select * from KPI_CHANNEL_DIM;

-----1
create sequence t3;
update KPI_CHANNEL_DIM set KPI_DW_SKEY=t3.nextval;
alter table KPI_CHANNEL_DIM modify KPI_DW_INSERT_DATE default sysdate;
alter table KPI_CHANNEL_DIM modify KPI_DW_UPDATE_DATE default sysdate;

select * from KPI_CHANNEL_DIM ;

------------------------------------------------
------7
create sequence t4;
update KPI_ITEM_MERCHANDISE_DEPAR_DIM set KPI_DW_SKEY=t4.nextval;

alter table KPI_ITEM_MERCHANDISE_DEPAR_DIM modify KPI_DW_INSERT_DATE default sysdate;
alter table KPI_ITEM_MERCHANDISE_DEPAR_DIM modify KPI_DW_UPDATE_DATE default sysdate;


----------------------SEQUENCE--------------------------
-----6
create sequence t5;
update KPI_ITEM_MERCHANDISE_COL_DIM set KPI_DW_SKEY=t5.nextval;


alter table KPI_ITEM_MERCHANDISE_COL_DIM modify KPI_DW_INSERT_DATE default sysdate;
alter table KPI_ITEM_MERCHANDISE_COL_DIM modify KPI_DW_UPDATE_DATE default sysdate;



----------------------SEQUENCE--------------------------
----5
create sequence t6;

update KPI_ITEM_MERCHANDISE_CLASS_DIM set KPI_DW_SKEY=t6.nextval;

alter table KPI_ITEM_MERCHANDISE_CLASS_DIM modify KPI_DW_INSERT_DATE default sysdate;
alter table KPI_ITEM_MERCHANDISE_CLASS_DIM modify KPI_DW_UPDATE_DATE default sysdate;




---------------------
-----8

create sequence t7;
update KPI_ITEM_MERCHANDISE_SUBCL_DIM set KPI_DW_SKEY=t7.nextval;

alter table KPI_ITEM_MERCHANDISE_SUBCL_DIM modify KPI_DW_INSERT_DATE default sysdate;
alter table KPI_ITEM_MERCHANDISE_SUBCL_DIM modify KPI_DW_UPDATE_DATE default sysdate;


---------------seq

-----3
create sequence t8;
update KPI_DEPARTMENT_DIM set KPI_DW_SKEY=t8.nextval;

alter table KPI_DEPARTMENT_DIM modify KPI_DW_INSERT_DATE default sysdate;
alter table KPI_DEPARTMENT_DIM modify KPI_DW_UPDATE_DATE default sysdate;




----------------------SEQUENCE--------------------------
------4
create sequence t11;
update KPI_ITEM_DIM set KPI_DW_SKEY=t11.nextval;

alter table KPI_ITEM_DIM modify KPI_DW_INSERT_DATE default sysdate;
alter table KPI_ITEM_DIM modify KPI_DW_UPDATE_DATE default sysdate;





-----<<<<<<<<<<< PRIMARY KEYS>>>>>>>>>>>>>>>>>>>------------------



ALTER TABLE KPI_LOCATION_DIM ADD PRIMARY KEY(KPI_DW_SKEY);
DESC KPI_LOCATION_DIM;


ALTER TABLE KPI_TRANSACTION_LINE_FACT ADD PRIMARY KEY(KPI_DW_SKEY);
DESC KPI_TRANSACTION_LINE_FACT;



ALTER TABLE kpi_channel_dim ADD PRIMARY KEY(KPI_DW_SKEY);

DESC KPI_CHANNEL_DIM;


ALTER TABLE KPI_CLASS_DIM ADD PRIMARY KEY(KPI_DW_SKEY);
DESC KPI_CLASS_DIM;


ALTER TABLE KPI_ITEM_MERCHANDISE_DEPAR_DIM ADD PRIMARY KEY(KPI_DW_SKEY);
DESC KPI_ITEM_MERCHANDISE_DEPAR_DIM;


ALTER TABLE KPI_ITEM_MERCHANDISE_COL_DIM ADD PRIMARY KEY(KPI_DW_SKEY);
DESC KPI_ITEM_MERCHANDISE_COL_DIM;


ALTER TABLE KPI_ITEM_MERCHANDISE_CLASS_DIM ADD PRIMARY KEY(KPI_DW_SKEY);
DESC KPI_ITEM_MERCHANDISE_CLASS_DIM;


ALTER TABLE KPI_ITEM_MERCHANDISE_SUBCL_DIM ADD PRIMARY KEY(KPI_DW_SKEY);
DESC KPI_ITEM_MERCHANDISE_SUBCL_DIM;



ALTER TABLE KPI_DEPARTMENT_DIM ADD PRIMARY KEY(KPI_DW_SKEY);
DESC KPI_DEPARTMENT_DIM;


ALTER TABLE KPI_ITEM_DIM ADD PRIMARY KEY(KPI_DW_SKEY);
DESC KPI_ITEM_DIM;


commit all;

-----<<<<<<<<<<<<FOREIGN KEY>>>>>>>>>>>>>>>>>----------------------
delete from kpi_transaction_line_fact where kpi_location_skey not in
(select kpi_dw_skey from kpi_location_dim);

delete from kpi_transaction_line_fact where kpi_channel_skey not in
(select kpi_dw_skey from kpi_channel_dim);

delete from kpi_transaction_line_fact where kpi_location_skey not in
(select kpi_dw_skey from kpi_location_dim);

delete from kpi_transaction_line_fact where kpi_department_skey not in
(select kpi_dw_skey from kpi_department_dim);

delete from kpi_transaction_line_fact where kpi_item_skey not in
(select kpi_dw_skey from kpi_item_dim);

delete from kpi_item_dim where kpi_class_skey not in
(select kpi_dw_skey from kpi_class_dim);

delete from kpi_item_dim where ws_merchandise_department_skey not in
(select kpi_dw_skey from kpi_item_merchandise_depar_dim);

delete from kpi_item_dim where ws_merchandise_collection_skey not in
(select kpi_dw_skey from kpi_item_merchandise_col_dim);

delete from kpi_item_dim where ws_merchandise_class_skey not in
(select kpi_dw_skey from kpi_item_merchandise_class_dim);

delete from kpi_item_dim where ws_merchandise_subclass_skey not in
(select kpi_dw_skey from kpi_item_merchandise_subcl_dim);

COMMIT;
---------------foreign_keys------------
select * from kpi_transaction_line_fact;   

alter table kpi_transaction_line_fact add
foreign key(kpi_channel_skey) references kpi_channel_dim(kpi_dw_skey); 

alter table kpi_transaction_line_fact add constraint FK_kpi_location_skey
foreign key(kpi_location_skey) references kpi_location_dim(kpi_dw_skey); 

alter table kpi_transaction_line_fact add constraint FK_kpi_department_skey
foreign key(kpi_department_skey) references kpi_department_dim(kpi_dw_skey);

alter table kpi_transaction_line_fact add constraint FK_kpi_item_skey
foreign key(kpi_item_skey) references kpi_item_dim(kpi_dw_skey); 



alter table kpi_item_dim add constraint FK_kpi_class_skey
foreign key(kpi_class_skey) references kpi_class_dim(kpi_dw_skey);

alter table kpi_item_dim add constraint FK_ws_merchandise_depar_skey
foreign key(ws_merchandise_department_skey) references KPI_ITEM_MERCHANDISE_DEPAR_DIM(kpi_dw_skey);

alter table kpi_item_dim add constraint FK_ws_merchandise_coll_skey
foreign key(ws_merchandise_collection_skey) references KPI_ITEM_MERCHANDISE_col_DIM(kpi_dw_skey);

alter table kpi_item_dim add constraint FK_ws_merchandise_class_skey
foreign key(ws_merchandise_class_skey) references KPI_ITEM_MERCHANDISE_class_DIM(kpi_dw_skey);

alter table kpi_item_dim add constraint FK_ws_merchandise_subcl_skey
foreign key(ws_merchandise_subclass_skey) references KPI_ITEM_MERCHANDISE_subcl_DIM(kpi_dw_skey);
















----<<<<<<UPDATE DATE COLUMNS IN EVERY TABLE>>>>>>>>>>>>>>>>>>
UPDATE kpi_class_dim
SET kpi_dw_update_date=sysdate,kpi_dw_insert_date=sysdate
WHERE  kpi_dw_skey is not null;



select * from kpi_channel_dim;
