SET SERVEROUTPUT ON
/*You disconnect, log off, or otherwise end your session.
• You explicitly set SERVEROUTPUT to OFF.
• The Oracle database discards session state either at your request or because of a
compilation error*/
 BEGIN
  DBMS_OUTPUT.PUT_LINE('Hey look, Ma!');
 END;

  SET ECHO ON
SQL> @wordcount.fun
SQL> CREATE OR REPLACE FUNCTION wordcount (str IN VARCHAR2)
 2 RETURN PLS_INTEGER
 3 AS
 4 /* words PLS_INTEGER := 0; ***Commented out for intentional error*** */
 5 len PLS_INTEGER := NVL(LENGTH(str),0);
38 | Chapter 2: Creating and Running PL/SQL Code
www.it-ebooks.info
 6 inside_a_word BOOLEAN;
 7 BEGIN
 8 FOR i IN 1..len + 1
 9 LOOP
 10 IF ASCII(SUBSTR(str, i, 1)) < 33 OR i > len
 11 THEN
 12 IF inside_a_word
 13 THEN
 14 words := words + 1;
 15 inside_a_word := FALSE;
 16 END IF;
 17 ELSE
 18 inside_a_word := TRUE;
 19 END IF;
 20 END LOOP;
 21 RETURN words;
 22 END;



 
