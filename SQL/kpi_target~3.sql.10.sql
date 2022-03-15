---1111


alter table kpi_item_dim add BRAND_NAME VARCHAR2(100);

---222

UPDATE kpi_item_dim
SET brand_name=name where kpi_item_dim.kpi_class_skey=kpi_class_dim.class_id;

update kpi_item_dim i set i.brand_name=(select c.name from kpi_class_dim c where c.class_id=i.kpi_class_skey);



select * from kpi_item_dim;
insert into kpi_item_dim (BRAND_NAME)(select name from KPI_CLASS_DIM);

truncate table kpi_item_dim;
ROLLBACK;


------CREATE BRAND_NAME field in KPI_ITEM_DIM and populate values from NAME field present in KPI_CLASS_DIM
