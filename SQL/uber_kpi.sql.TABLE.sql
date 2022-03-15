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