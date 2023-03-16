-- sql practice 1970 efcodd/ relational model /relational algebra& tuple relational model/oracle:sequel(idea to software)
-- sql :domain specific lang/declarative lang/DDL,DML,TCL,DCL/KEY & CONSTRAINTS/OPERATORS/CLAUSES/AGGREGATE FUN/JOINS/NESTED QUERY

-- TYPES OF SQL COMMANDS:
-- 1. DDL: create,alter,drop,truncate(only data deleted),rename     (structure of table)
-- 2.DML: select,insert,update,delete   (structure of data)
-- 3.DCL: grant,revoke (previlage given to users)
-- 4. TCL: commit,rollback,savepoint
-- constraint:pk,fk,check,unique,default,not null
-- create table Student(SID INT,NAME VARCHAR(20
-- ALTER:
--     ADD COLUMNS/REMOVE COLUMNS/MODIFY DATATYPE/ADD CONSTRAINT/MODIFY DATATYPE LENGTH/ADD CONSTRAINT/REMOVE CONSTRAINT/RENAME TABLE
-- ALTER TABLE STUDENT ADD ADDRESS VARCHAR(30)
-- ALTER TABLE STUDENT ADD PHNO INT
-- ALTER TABLE STUDENT DELETE PHNO
-- create table employee(
--     id int,name varchar(20)
-- );
-- 
-- desc employee;
-- alter table employee drop column address;
-- alter table employee  modify  id varchar(10);
-- alter table employee rename column id to roll_no
-- alter table employee rename to emp;
-- alter table emp rename to employee
-- alter table employee add primary key (roll_no)
-- desc employee
-- select * from employee
--alter table employee add dept VARCHAR(20)
--ALTER TABLE EMPLOYEE ADD SALARY NUMERIC(10)
--INSERT INTO EMPLOYEE VALUES ('4','ANSIKA','AI',95000)
--SELECT MAX(SALARY) AS MAX_SAL,MIN(SALARY) AS MIN_SAL FROM EMPLOYEE 
--SELECT * FROM EMPLOYEE WHERE SALARY IN(SELECT MAX(SALARY) FROM EMPLOYEE)
--SELECT MAX(SALARY) FROM EMPLOYEE WHERE SALARY NOT IN(SELECT MAX(SALARY ) FROM EMPLOYEE)
--SELECT * FROM EMPLOYEE WHERE SALARY =(SELECT MAX(SALARY) FROM EMPLOYEE WHERE SALARY NOT IN(SELECT MAX(SALARY ) FROM EMPLOYEE))
--SELECT DEPT,COUNT(DEPT) FROM EMPLOYEE GROUP BY DEPT
--SELECT DEPT,COUNT(*) FROM EMPLOYEE GROUP BY DEPT
--SELECT DEPT FROM EMPLOYEE GROUP BY DEPT
--SELECT * FROM EMPLOYEE WHERE DEPT IN( SELECT DEPT FROM EMPLOYEE GROUP BY DEPT HAVING COUNT(*)<2)
-- ALTER TABLE PROJECT
-- ADD FOREIGN KEY(EID)
-- REFERENCES EMPLOYEE(E_ID);
--SELECT * FROM EMPLOYEE
--INSERT INTO EMPLOYEE VALUES('51','MANAK','CSE',450000)
--SELECT * FROM EMPLOYEE ,PROJECT WHERE E_ID IN (SELECT EID FROM PROJECT WHERE PROJECT.EID=EMPLOYEE.E_ID)
--SELECT * FROM EMPLOYEE,PROJECT WHERE E_ID IN (SELECT DISTINCT  EID FROM PROJECT )
--SELECT * FROM EMPLOYEE,PROJECT WHERE E_ID IN(SELECT E_ID FROM PROJECT WHERE LOCATION IN('BANGLORE','DELHI'))


--correlated subquery:nested loop /synchronised query/outer query is used in inner query

---all employee working in dept














