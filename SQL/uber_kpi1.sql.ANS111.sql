create table fact_trip (
    trip_uuid varchar2(100),
    datestr date,
    product_type_name varchar2(100),
    city_id number,
    driver_uuid varchar2(100),
    is_completed varchar2(100),
    eta number,
    ata number,
    ufp_fare number,
    fare_final number
);



create table dim_city (
    city_id number,
    city_name varchar2(20),
    country varchar2(20)
);


select * from fact_trip;

select * from dim_city;



select country from dim_city where city_id in 
(select city_id from 
(select city_id,ROW_NUMBER() OVER(ORDER BY tot ) as ran from 
(select city_id,sum(fare_final) as tot ,to_number(extract(day from(to_date(datestr, 'mm-dd-yyyy')))) as d from fact_trip 
group by fare_final,city_id,datestr ) where d between 8 and 14 ) where ran=2) ;


select
(((select sum(fare_final) from fact_trip where to_char(datestr, 'W')=1) 
- (select sum(fare_final) from fact_trip where to_char(datestr, 'W')=2)) 
/ (select sum(fare_final) from fact_trip where to_char(datestr, 'W')=1)) * 100 as "Growth%"
from fact_trip where to_char(datestr,'W')=2 group by to_char(datestr,'W');


select 
(((select sum(fare_final) from fact_trip where to_char(datestr, 'W')='1') 
- (select sum(fare_final) from fact_trip where to_char(datestr, 'W')='2'))
/ (select sum(fare_final) from fact_trip where to_char(datestr, 'W')='1') *100 ) as "Growth%"
from dual;



truncate table dim_city;








