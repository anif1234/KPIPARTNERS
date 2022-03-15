alter table kpi_stg_channel add primary key(list_id);
 
alter table kpi_stg_classes add primary key(class_id);

alter table kpi_stg_departments add primary key(department_id);

alter table kpi_stg_item_merchandise_class add primary key(item_merchandise_class_id);

alter table kpi_stg_item_merchandise_colle add primary key(item_merchandise_collection_id);

alter table kpi_stg_item_merchandise_depar add primary key(item_merchandise_department_id);

alter table kpi_stg_item_merchandise_subcl add primary key(item_merchandise_subclass_id);

alter table kpi_stg_items add primary key(item_id);

alter table kpi_stg_locations add primary key(location_id);

alter table kpi_stg_transactions add primary key(transaction_id);

alter table kpi_stg_transactions_lines add primary key(transaction_id,transaction_line_id);


------------------<<<<<<<<<<<PRIMARY KEYS >>>>>>>>>>>>>>>>>------------------------------------------------



delete from kpi_stg_items
where ws_merchandise_collection_id not in (select item_merchandise_collection_id from kpi_stg_item_merchandise_colle);

delete from kpi_stg_items
where ws_merchandise_class_id not in (select item_merchandise_class_id from kpi_stg_item_merchandise_class);

delete from kpi_stg_items
where ws_merchandise_subclass_id not in (select item_merchandise_subclass_id from kpi_stg_item_merchandise_subcl);


delete from kpi_stg_transactions_lines
where item_id not in (select item_id from kpi_stg_items);

commit;

delete from kpi_stg_transactions_lines
where department_id not in (select department_id from kpi_stg_departments);

delete from kpi_stg_transactions_lines
where location_id not in (select location_id from kpi_stg_locations);

delete from kpi_stg_transactions
where channel_id not in (select list_id from kpi_stg_channel);

-------------------------------------<<<<<<FOREIGN KEYS>>>>>>>>>----------------------------

alter table kpi_stg_items add constraint FK_kpi_stg_items
foreign key(class_id) references kpi_stg_classes(class_id);

alter table kpi_stg_items add constraint FK_kp_stg_items
foreign key(ws_merchandise_department_id) references kpi_stg_item_merchandise_depar(item_merchandise_department_id);


alter table kpi_stg_items add constraint FK_k_stg_items
foreign key(ws_merchandise_collection_id) references kpi_stg_item_merchandise_colle(item_merchandise_collection_id);

alter table kpi_stg_items add constraint FK_kpi_st_items
foreign key(ws_merchandise_class_id) references kpi_stg_item_merchandise_class(item_merchandise_class_id);

alter table kpi_stg_items add constraint FK_kpi_s_items
foreign key(ws_merchandise_subclass_id) references kpi_stg_item_merchandise_subcl(item_merchandise_subclass_id);




alter table kpi_stg_transactions_lines add constraint FK_kpi_stg_transactions_lines
foreign key(location_id) references kpi_stg_locations(location_id); 

alter table kpi_stg_transactions_lines add constraint FK_kpi_transactions_lines
foreign key(department_id) references kpi_stg_departments(department_id);

alter table kpi_stg_transactions_lines add constraint FK_stg_transactions_lines
foreign key(item_id) references kpi_stg_items(item_id);



alter table kpi_stg_transactions add constraint FK_kpi_stg_transactions
foreign key(channel_id) references kpi_stg_channel(list_id);


COMMIT;

