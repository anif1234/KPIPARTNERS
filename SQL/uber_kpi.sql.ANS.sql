---3


---a

select count(d.city_id) from dim_city d,fact_trip f
where d.city_id=f.city_id and product_type_name='uberPOOL'; 

---b
select city_id,(eta-ata)/ata as  a from fact_trip;

select city_id,(eta-ata)/ata as  a from fact_trip where rownum=1 order by a ;

---c

----------select product_type_name from fact_trip,dim_city where rownum=1 order by sum(fare_final) desc ;

select product_type_name,ROW_NUMBER() OVER(ORDER BY total_rev ) as tot,total_rev from 
(select sum(fare_final) as total_rev,fact_trip.product_type_name
from dim_city,fact_trip where city_name = 'SanFrancisco'
group by product_type_name) 
order by total_rev desc ;



--select fare_final from fact_trip where city_id in (select city_id from dim_city where city_name='SanFrancisco');

----d

select * from (select product_type_name,sum(fare_final) as total_rev
from fact_trip 
group by product_type_name) where total_rev>1000;

--by total_rev>1000 there is no records

select * from (select product_type_name,sum(fare_final) as total_rev
from fact_trip 
group by product_type_name) where total_rev>100;

-----e

select country from dim_city where city_id in 
(select city_id from 


(select city_id,ROW_NUMBER() OVER(ORDER BY tot ) as ran 
from 

(select city_id,sum(fare_final) as tot ,to_number(extract(day from(to_date(datestr, 'mm-dd-yyyy')))) as d from fact_trip 
group by fare_final,city_id,datestr ) where d between 8 and 14 )

where ran=2) ;



select * from
(select d.country , sum(f.fare_final), rownum as rank from dim_city d join fact_trip f on d.city_id=f.city_id where
to_char(datestr, 'W')=2 order by 2) where mod(rank, 2)=0;



----f


select
(((select sum(fare_final) from fact_trip where to_char(datestr, 'W')=1) 
- (select sum(fare_final) from fact_trip where to_char(datestr, 'W')=2)) 
/ (select sum(fare_final) from fact_trip where to_char(datestr, 'W')=1)) * 100 as "Growth%"
from fact_trip where to_char(datestr,'W')=2 group by to_char(datestr,'W');


------g

select 
(((select sum(fare_final) from fact_trip where to_char(datestr, 'W')='1') 
- (select sum(fare_final) from fact_trip where to_char(datestr, 'W')='2'))
/ (select sum(fare_final) from fact_trip where to_char(datestr, 'W')='1') *100 ) as "Growth%"
from dual;

