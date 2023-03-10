DECLARE 
   x number := 10; 
BEGIN 
   LOOP 
      dbms_output.put_line(x); 
      x := x + 10; 
      IF x > 50 THEN 
         exit; 
      END IF; 
   END LOOP; 
   -- after exit, control resumes here  
   dbms_output.put_line('After Exit x is: ' || x); 
END; 
DECLARE 
   x number := 10; 
BEGIN 
   LOOP 
      dbms_output.put_line(x); 
      x := x + 10; 
      exit WHEN x > 50; 
   END LOOP; 
   -- after exit, control resumes here 
   dbms_output.put_line('After Exit x is: ' || x); 
END; 
DECLARE 
   a number(2) := 10; 
BEGIN 
   WHILE a < 20 LOOP 
      dbms_output.put_line('value of a: ' || a); 
      a := a + 1; 
   END LOOP; 
END; 
DECLARE 
   a number(2); 
BEGIN 
   FOR a in 10 .. 20 LOOP 
      dbms_output.put_line('value of a: ' || a); 
  END LOOP; 
END; 
DECLARE 
   a number(2) ; 
BEGIN 
   FOR a IN REVERSE 10 .. 20 LOOP 
      dbms_output.put_line('value of a: ' || a); 
   END LOOP; 
END; 

--nested loops

-- The syntax for a nested FOR LOOP statement in PL/SQL is as follows −

-- FOR counter1 IN initial_value1 .. final_value1 LOOP 
--    sequence_of_statements1 
--    FOR counter2 IN initial_value2 .. final_value2 LOOP 
--       sequence_of_statements2 
--    END LOOP; 
-- END LOOP;
-- The syntax for a nested WHILE LOOP statement in Pascal is as follows −

-- WHILE condition1 LOOP 
--    sequence_of_statements1 
--    WHILE condition2 LOOP 
--       sequence_of_statements2 
--    END LOOP; 
-- END LOOP; 

DECLARE 
   i number(3); 
   j number(3); 
BEGIN 
   i := 2; 
   LOOP 
      j:= 2; 
      LOOP 
         exit WHEN ((mod(i, j) = 0) or (j = i)); 
         j := j +1; 
      END LOOP; 
   IF (j = i ) THEN 
      dbms_output.put_line(i || ' is prime'); 
   END IF; 
   i := i + 1; 
   exit WHEN i = 50; 
   END LOOP; 
END; 

--control statements
--1. exit
DECLARE 
   a number(2) := 10; 
BEGIN 
   -- while loop execution  
   WHILE a < 20 LOOP 
      dbms_output.put_line ('value of a: ' || a); 
      a := a + 1; 
      IF a > 15 THEN 
         -- terminate the loop using the exit statement 
         EXIT; 
      END IF; 
   END LOOP; 
END; 
--2. continue
DECLARE 
   a number(2) := 10; 
BEGIN 
   -- while loop execution  
   WHILE a < 20 LOOP 
      dbms_output.put_line ('value of a: ' || a); 
      a := a + 1; 
      IF a = 15 THEN 
         -- skip the loop using the CONTINUE statement 
         a := a + 1; 
         CONTINUE; 
      END IF; 
   END LOOP; 
END; 
--3. goto


-- GOTO label;
-- ..
-- ..
-- << label >>
-- statement;


DECLARE 
   a number(2) := 10; 
BEGIN 
   <<loopstart>> 
   -- while loop execution  
   WHILE a < 20 LOOP
   dbms_output.put_line ('value of a: ' || a); 
      a := a + 1; 
      IF a = 15 THEN 
         a := a + 1; 
         GOTO loopstart; 
      END IF; 
   END LOOP; 
END; 
--Labeling a PL/SQL Loop
DECLARE 
   i number(1); 
   j number(1); 
BEGIN 
   << outer_loop >> 
   FOR i IN 1..3 LOOP 
      << inner_loop >> 
      FOR j IN 1..3 LOOP 
         dbms_output.put_line('i is: '|| i || ' and j is: ' || j); 
      END loop inner_loop; 
   END loop outer_loop; 
END; 

--strings

DECLARE 
   name varchar2(20); 
   company varchar2(30); 
   introduction clob; 
   choice char(1); 
BEGIN 
   name := 'John Smith'; 
   company := 'Infotech'; 
   introduction := ' Hello! I''m John Smith from Infotech.'; 
   choice := 'y'; 
   IF choice = 'y' THEN 
      dbms_output.put_line(name); 
      dbms_output.put_line(company); 
      dbms_output.put_line(introduction); 
   END IF; 
END; 
DECLARE 
   greetings varchar2(11) := 'hello world'; 
BEGIN 
   dbms_output.put_line(UPPER(greetings)); 
    
   dbms_output.put_line(LOWER(greetings)); 
    
   dbms_output.put_line(INITCAP(greetings)); 
    
   /* retrieve the first character in the string */ 
   dbms_output.put_line ( SUBSTR (greetings, 1, 1)); 
    
   /* retrieve the last character in the string */ 
   dbms_output.put_line ( SUBSTR (greetings, -1, 1)); 
    
   /* retrieve five characters,  
      starting from the seventh position. */ 
   dbms_output.put_line ( SUBSTR (greetings, 7, 5)); 
    
   /* retrieve the remainder of the string, 
      starting from the second position. */ 
   dbms_output.put_line ( SUBSTR (greetings, 2)); 
     
   /* find the location of the first "e" */ 
   dbms_output.put_line ( INSTR (greetings, 'e')); 
END; 
DECLARE 
   greetings varchar2(30) := '......Hello World.....'; 
BEGIN 
   dbms_output.put_line(RTRIM(greetings,'.')); 
   dbms_output.put_line(LTRIM(greetings, '.')); 
   dbms_output.put_line(TRIM( '.' from greetings)); 
END; 
--arrays

-- In Oracle environment, the starting index for varrays is always 1.

-- You can initialize the varray elements using the constructor method of the varray type, which has the same name as the varray.

-- Varrays are one-dimensional arrays.

-- A varray is automatically NULL when it is declared and must be initialized before its elements can be referenced.
DECLARE 
   type namesarray IS VARRAY(5) OF VARCHAR2(10); 
   type grades IS VARRAY(5) OF INTEGER; 
   names namesarray; 
   marks grades; 
   total integer; 
BEGIN 
   names := namesarray('Kavita', 'Pritam', 'Ayan', 'Rishav', 'Aziz'); 
   marks:= grades(98, 97, 78, 87, 92); 
   total := names.count; 
   dbms_output.put_line('Total '|| total || ' Students'); 
   FOR i in 1 .. total LOOP 
      dbms_output.put_line('Student: ' || names(i) || ' 
      Marks: ' || marks(i)); 
   END LOOP; 
END; 

DECLARE 
   CURSOR c_customers is 
   SELECT  name FROM customers; 
   type c_list is varray (6) of customers.name%type; 
   name_list c_list := c_list(); 
   counter integer :=0; 
BEGIN 
   FOR n IN c_customers LOOP 
      counter := counter + 1; 
      name_list.extend; 
      name_list(counter)  := n.name; 
      dbms_output.put_line('Customer('||counter ||'):'||name_list(counter)); 
   END LOOP; 
END; 

-- Customer(1): Ramesh  
-- Customer(2): Khilan  
-- Customer(3): kaushik     
-- Customer(4): Chaitali  
-- Customer(5): Hardik  
-- Customer(6): Komal  