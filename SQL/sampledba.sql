/*create table emp(
ename varchar(20),
job VARCHAR(20),
mgr VARCHAR(20),
hiredate date,
sal NUMBER(8,2),
comm NUMBER(8,2),
deptno NUMBER(4)
);
insert */

create user anif identified by root;
grant create table to anif;

show user;

grant connect,resourse to anif;
alter session set current_schema= anif;
create table eee(ename VARCHAR(20));

create table sys."newSS" (name varchar(10), age int)tablespace SYSTEM;


