create table movie(hero_name varchar2(20) not null,heroine_name varchar2(20) not null,music_director varchar2(20) not null,film_name varchar2(20) not null,dor date,director_name varchar2(20) not null);

insert into movie values('abdul','jasmin','muskin','pyar','12-jan-98','irshad');

insert into movie values('abdul1','jasmin1','muskin1','pyar1',null,'irshad1');


select * from movie;

create table emp(eno number(5),ename varchar2(20),salary number(5));


insert into emp values(1,'veera',10000);
insert into emp values(2,'raghu',12000);
insert into emp values(3,'badri',8000);

select * from emp;

alter table emp add(da number(7),hra number(7),gross_salary number(10));

update emp set da=salary*(30/100),hra=salary*(10/100),gross_salary=(salary+hra+da);
