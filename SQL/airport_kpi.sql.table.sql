drop table fligth_weather;


create table airport (
    code varchar2(100),
    lat number,
    lon number,
    name varchar2(100),
    city varchar2(100),
    state varchar2(100),
    country varchar2(100),
    woeid number,
    tz varchar2(100),
    phone varchar2(100),
    type varchar2(100),
    email varchar2(100),
    url varchar2(100),
    runway_length number,
    elev number,
    icao varchar2(100),
    direct_flights number,
    carriers number
);

