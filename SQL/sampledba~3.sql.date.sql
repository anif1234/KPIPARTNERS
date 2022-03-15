SELECT ename,lpad('*',length(ename),'*') as e FROM employee;
/*
ENAME      E
---------- ------------------------------
king       ****
blake      *****
clark      *****
allen      *****
ward       ****
jones      *****
martin     ******
scott      *****

*/

SELECT sysdate FROM dual;

SELECT current_date FROM dual;

SELECT sysdate+7 FROM dual;

SELECT sysdate-7 FROM dual;

SELECT ADD_MONTHS(sysdate,3) FROM dual;

SELECT MONTHS_BETWEEN(sysdate,'20-MAY-2014') FROM dual;

SELECT LAST_DAY(sysdate) FROM dual;

SQL> SELECT NEXT_DAY(sysdate) FROM dual;
SELECT NEXT_DAY(sysdate) FROM dual;

--ERROR at line 1:
--ORA-00909: invalid number of arguments


SELECT NEXT_DAY(sysdate,3) FROM dual;

SELECT NEXT_DAY(sysdate,8) FROM dual;
SELECT NEXT_DAY(sysdate,8) FROM dual
                        
--ERROR at line 1:
--ORA-01846: not a valid day of the week


SELECT NEXT_DAY(sysdate,1) FROM dual;

SELECT NEXT_DAY(sysdate,2) FROM dual;

SELECT NEXT_DAY(sysdate,7) FROM dual;

SELECT NEXT_DAY(sysdate,'friday') FROM dual;

SELECT NEXT_DAY(sysdate,'wednesday') FROM dual;

SELECT NEXT_DAY(sysdate+30,'wednesday') FROM dual;

SELECT EXTRACT(year FROM sysdate) FROM dual;

SELECT EXTRACT(month FROM sysdate) FROM dual;

SELECT EXTRACT(day FROM sysdate) FROM dual;
