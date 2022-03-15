--JOINS
--INNERJOIN

select ename,deptno from emp inner join department_master on emp.deptno=department_master.dept_code;

--    ----OUTER JOIN--------

--LEFT JOIN OR LEFT OUTER JOIN----

select ename,deptno from emp left join department_master on emp.deptno=department_master.dept_code;

---RIGHT OR RIGHT OUTER JOIN-----

select ename,deptno from emp full outer join department_master on emp.deptno=department_master.dept_code;
select * from department_master;
select * from emp;

----FULL OUTER JOIN-------------

select ename,deptno from emp full outer join department_master on emp.deptno=department_master.dept_code;

select * from staff_master;

select * from designation_master;

select staff_name,staff_master.design_code from
staff_master full outer join designation_master  on
staff_master.design_code=designation_master.design_code; 


----CROSS JOIN---------------------------

select * from emp, department_master
where emp.deptno=department_master.dept_code ;
