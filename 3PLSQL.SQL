SET SERVEROUTPUT ON
DECLARE
   MAX_SALARY JOB.SALARY%TYPE;
   PROVIDER    JOB.PROV_ID%TYPE;
 
BEGIN
   SELECT MAX(SALARY)  INTO MAX_SALARY FROM JOB;
   SELECT PROV_ID INTO PROVIDER FROM JOB WHERE SALARY = MAX_SALARY;
   DBMS_OUTPUT.PUT_LINE('The MAXIMUM SALARY IS  : ' || MAX_SALARY);
   DBMS_OUTPUT.PUT_LINE('The PROVIDER ID IS  : ' || PROVIDER);
END;
/


