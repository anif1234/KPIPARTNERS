drop table ee;
commit;
show user;
CREATE TABLE EMP(EMPNO NUMBER(4) NOT NULL,
        ENAME VARCHAR2(10),
        JOB VARCHAR2(9),
        MGR NUMBER(4),
        HIREDATE DATE,
        SAL NUMBER(7, 2),
        COMM NUMBER(7, 2),
        DEPTNO NUMBER(2)
        );
SELECT * FROM EMP;
SHOW USER;