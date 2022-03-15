SELECT lower('Oracle') FROM dual;

SELECT upper('Oracle') FROM dual;

SELECT instr('Oracle','a') FROM dual;

SELECT concat('Oracle','for') FROM dual;

SELECT concat(concat('Oracle',' for'),' developers') FROM dual;

SELECT 'Oracle '||'for '||'Developers' FROM dual;

SELECT substr('Oracle',2) FROM dual;
SELECT substr('Oracle',-2) FROM dual;

SELECT substr('Oracle',2,2) FROM dual;                                                                            

SELECT length('Oracle for Developers') FROM dual;

SELECT ltrim('    Oracle for Developers') FROM dual;

SELECT rtrim('    Oracle for Developers         ') FROM dual;

ELECT trim('    Oracle for Developers         ') FROM dual;


SELECT lpad('Oracle',10,'*') FROM dual;                                                                    

SELECT rpad('Oracle',10,'*') FROM dual;

RPAD('ORAC                                                                      
----------                                                                      
Oracle****                                                                      

SQL> SELECT rpad(ename,15,'*') FROM employee;


RPAD(ENAME,15,'                                                                 
-----------------                                                                 
king***********                                                                 
blake**********                                                                 
clark**********                                                                 
allen**********                                                                 
ward***********                                                                 
jones**********                                                                 
martin*********                                                                 
scott**********                                             


--SQL> SELECT replace(ename,length(ename),lpad('*',ename,'*')) FROM employee;
--SELECT replace(ename,length(ename),lpad('*',ename,'*')) FROM employee
                                            *
ERROR at line 1:
ORA-01722: invalid number 


SQL> spool off
