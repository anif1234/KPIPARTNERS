--select * from emp
select * from emp where sal=5000 or JOB LIKE 'PRESIDENT';

select student_code from book_transactions;

select * from book_transactions;

--PATTERN MATCHING
select count(*) from emp where ename like 'A%';

--NULL
select * from book_transactions where student_code is null;

--NOT NULL
select * from emp where comm is not null;

--LIKE
select * from emp where ename like '%L%L%';

--IN
select * from staff_master where design_code in (102,103);

select * from emp where deptno>10;

--HAVING ORDER BY AND GROUO BY

select deptno,count(ename) from emp where
deptno !=2 
and sal>800 
group by deptno
 having count(ename)>2;
 
 select deptno,count(ename) from emp where
deptno !=2 
and sal>800 
group by rollup(deptno)
 having count(ename)>2
 order by count(ename);
 
 select sal,deptno,count(ename) from emp where
deptno !=2 
and sal>800 
group by sal
 having count(ename)>2;
----------------------------------------------- 
desc emp;

--select empno,ename,deptno from emp where ename is not null group by rollup(empno,deptno);

select deptno,count(ename) from emp where
deptno !=2 
and sal>800 
group by deptno
 having count(ename)>2
 order by count(ename);
 
 select empno,deptno,count(ename) from emp where
deptno !=2 
and sal>800 
group by rollup(deptno,empno)
 having count(ename)>2
 order by count(ename);

select empno,deptno,count(ename) from emp where
deptno !=2 
and sal>800 
group by cube(ename)
 having count(ename)>2
 order by count(ename)
 ;
 
 select count(empno),deptno,ename from emp group by cube(deptno,ename);
 
 SELECT ceil(sal) FROM emp;
 
 








 
 

select deptno,count(ename) from emp where deptno>10 
group by deptno;
