show user;

insert into kpi_channel_dim(date_created,is_record_inactive,last_modified_date,list_id,list_item_name)
(select * from ABBLE.kpi_stg_channel);

-------------------------------------

insert into kpi_class_dim(class_id,date_last_modified,full_name,isinactive,NAME)
(select * from ABBLE.kpi_stg_classes);
----------------------------------------

ALTER TABLE kpi_department_dim
ALTER COLUMN NAME varchar2(100);

ALTER TABLE kpi_department_dim
MODIFY NAME varchar2(100);

insert into kpi_department_dim(date_last_modified,department_id,isinactive,NAME,ws_description)
(select * from ABBLE.kpi_stg_departments);

----------------------

insert into kpi_item_dim(item_id,sku,type_name,salesdescription,kpi_class_skey,ws_merchandise_department_skey,
ws_merchandise_collection_skey,ws_merchandise_class_skey,ws_merchandise_subclass_skey)
(select * from ABBLE.kpi_stg_items);
commit;


select * from kpi_item_dim;
-----------------------------------
insert into kpi_item_merchandise_class_dim(item_merchandise_class_id,description,item_merchandise_class_name)
(select * from ABBLE.kpi_stg_item_merchandise_class);

-----------------------------------

insert into kpi_item_merchandise_col_dim(item_merchandise_collection_id,description,item_merchandise_collection_na)
(select * from ABBLE.kpi_stg_item_merchandise_colle);


-------------------------------

insert into kpi_item_merchandise_depar_dim(item_merchandise_department_id,description,item_merchandise_department_na)
(select * from ABBLE.kpi_stg_item_merchandise_depar);


-----------------------------

insert into kpi_item_merchandise_subcl_dim(item_merchandise_subclass_id,description,item_merchandise_subclass_name)
(select * from ABBLE.kpi_stg_item_merchandise_subcl);


-------------------
ALTER TABLE kpi_location_dim
modify full_name varchar2(100);

insert into kpi_location_dim(location_id,address,city,country,date_last_modified,full_name,isinactive,name)
(select * from ABBLE.kpi_stg_locations);

---------------------


insert into kpi_transaction_line_fact(transaction_id,transaction_line_id,tranid,transaction_type,trandate,kpi_channel_skey,
kpi_location_skey,kpi_department_skey,kpi_item_skey,amount,cost,units)
(select a.transaction_id,b.transaction_line_id,a.tranid,a.transaction_type,a.trandate,a.channel_id,
b.location_id,b.department_id,b.item_id,b.amount,b.cost,b.units 
from ABBLE.kpi_stg_transactions a,ABBLE.kpi_stg_transactions_lines b where b.transaction_id = a.transaction_id);

COMMIT ; 
select * from kpi_transaction_line_fact;
truncate table kpi_transaction_line_fact;

show user;
