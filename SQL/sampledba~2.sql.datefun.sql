SELECT TO_CHAR(2560,'$9,999.0') FROM dual;                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              

SELECT TO_CHAR(2560,'$2,2222.0') FROM dual
                    
--ERROR at line 1:
--ORA-01481: invalid number format model 


SELECT TO_CHAR(2560,'$0,00,000.00') FROM dual;                                                                                                                                                                                                                                                                                              

SELECT TO_CHAR(sal,'$9,999.00') FROM employee;

/*TO_CHAR(SA                                                                                                                                                                                                                                                                                                  
----------                                                                                                                                                                                                                                                                                                  
 $5,100.00                                                                                                                                                                                                                                                                                                  
 $2,850.00                                                                                                                                                                                                                                                                                                  
 $2,450.00                                                                                                                                                                                                                                                                                                  
 $1,600.00                                                                                                                                                                                                                                                                                                  
 $1,250.00                                                                                                                                                                                                                                                                                                  
 $2,975.00                                                                                                                                                                                                                                                                                                  
 $1,250.00                                                                                                                                                                                                                                                                                                  
 $3,000.00                                                                                                                                                                                                                                                                                                  

8 rows selected.*/

SELECT TO_CHAR(sysdate,'DD MONTH YY') FROM dual;

SELECT TO_CHAR(sysdate) FROM dual;

SELECT TO_CHAR(sysdate,'DDth MONTH YY') FROM dual;

                                                                                                                                                                                                                                                                                          
SELECT TO_CHAR(sysdate,'DDspth MONTH YY') FROM dual;
                                                                                                                                                                                                                                                                                   
/*SELECT TO_DATE('20TH MAY 14','DDth MONTH YY') FROM dual;
SELECT TO_DATE('20TH MAY 14','DDth MONTH YY') FROM dual
               *
ERROR at line 1:
ORA-01861: literal does not match format string


SELECT TO_DATE('20TH MAY 14','DDth MONTH YY') FROM dual;
SELECT TO_DATE('20TH MAY 14','DDth MONTH YY') FROM dual
               
ERROR at line 1:
ORA-01861: literal does not match format string */


select TO_DATE ('May 22,2014','Month DD, YYYY') FROM dual;
                                                                                                                                                                                                                                                                                                  

select TO_DATE ('May 22,2014','Month DD, YYYY') FROM dual;
                                                                                                                                                                                                                                                                                                 
SELECT TO_CHAR(sysdate,'D') FROM dual;                                                                                                                                                                                                                                                                                                         

SELECT TO_CHAR(sysdate,'d') FROM dual;
                                                                                                                                                                                                                                                                                                        
SELECT TO_CHAR(sysdate,'DD') FROM dual;

                                                                                                                                                                                                                                                                                                        


