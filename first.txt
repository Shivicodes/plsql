/* Blocks in plsql */
/*Anonymous block */
/* Declaration execution(begin-end) exception-handling*/
DECLARE 
 v_test VARCHAR2(15):='FGVGHHBHB';
BEGIN
  DBMS_OUTPUT.PUT_LINE(v_test);
END;
/*/////////////////////////////////////////////////////////*/
CREATE TABLE Employee(  
EmployeeID int,  
FirstName varchar(255),  
LastName varchar(255),  
Email varchar(255),  
AddressLine varchar(255),  
City varchar(255)  ,
  Sal int
);  
INSERT INTO Employee VALUES(1001,'rehim','sen','reh@gmail.com','fghhnnnm jknj','knp',10000);
INSERT INTO Employee VALUES(1002,'rehimhh','senhjhjh','rhjhhgjeh@gmail.com','fghhnnnm jknj','knp',100000);
DECLARE
v_sal int;
v_firstname varchar(255);
v_lastname varchar(255);
BEGIN 
SELECT Sal ,FirstName ,LastName INTO v_sal, v_firstname, v_lastname  FROM Employee WHERE EmployeeID=1001;
 DBMS_OUTPUT.PUT_LINE(v_sal||v_firstname||v_lastname);


END;




/*ANCHOR DATATYPES*/
DECLARE
/* donot know type of table data, changen updation in future*/
  v_fname Students.Name%TYPE;
BEGIN
SELECT Name INTO v_fname FROM Students WHERE STU_ID=1;
DBMS_OUTPUT.PUT_LINE(v_fname);
END;

/*CONSTANT */
/* NAME CONSTANT DATATYPE :=VALUE*/
DECLARE
  v_fname Students.Name%TYPE;
BEGIN
SELECT Name INTO v_fname FROM Students WHERE STU_ID=1;
DBMS_OUTPUT.PUT_LINE(v_fname);
END;
DECLARE 
v_pi  CONSTANT NUMBER(7,6) DEFAULT 3.141592;
BEGIN 
DBMS_OUTPUT.PUT_LINE(v_pi);
END;
DECLARE 
v_pi  CONSTANT NUMBER(7,6) NOT NULL DEFAULT  3.141592;
BEGIN 
DBMS_OUTPUT.PUT_LINE(v_pi);
END;
 
 /*BIND VARIABLE */
 /*DECLARE ANYWHERE*/
 VARIABLE   v_bind1 VARCHAR2(10);
EXEC: v_bind1 :='GHGHJHH';
BEGIN
:v_bind1 :='ERTRTYYUYGH';
DBMS_OUTPUT.PUT_LINE(:v_bind1);
END;
PRINT :v_bind1;



SET AUTOPRINT ON;
VARIABLE v_bind2 VARCHAR(20);
EXEC :v_bind2 :='mansi';


/*control statements */
/* if / case*/

DECLARE 
v_if int :=1;
BEGIN
IF(v_if<10) AND (v_if>5) THEN 
 DBMS_OUTPUT.PUT_LINE(v_if);
END IF;
DBMS_OUTPUT.PUT_LINE('BBB');
END;

DECLARE 
v_if  NUMBER :=&Enter_the_number;
BEGIN
IF MOD(v_if,2)=0 THEN 
 DBMS_OUTPUT.PUT_LINE(v_if||'even');
ELSE
  DBMS_OUTPUT.PUT_LINE(v_if||'odd')
END IF;
DBMS_OUTPUT.PUT_LINE('BBB');
END;


DECLARE 
v_if  NUMBER :=20;
BEGIN
IF MOD(v_if,2)=0 THEN 
 DBMS_OUTPUT.PUT_LINE(v_if||'even');
ELSIF MOD(v_if,5)=0 THEN
   DBMS_OUTPUT.PUT_LINE(v_if||'divisble by 5');
ELSIF MOD(v_if,7)=0 THEN
   DBMS_OUTPUT.PUT_LINE(v_if||'divisble by 7');
ELSE
  DBMS_OUTPUT.PUT_LINE(v_if||'odd');

END IF;
DBMS_OUTPUT.PUT_LINE(v_if);
END;





 


