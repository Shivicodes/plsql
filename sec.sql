DECLARE
  l_book_count INTEGER;

BEGIN  /*runned on sqlplus*/
  SELECT COUNT(*)
  INTO l_book_count
  FROM books
  WHERE author LIKE '%FEUERSTEIN, STEVEN%';
 
 DBMS_OUTPUT.PUT_LINE (
 'Steven has written (or co-written) ' ||
 l_book_count ||
' books.');
UPDATE books
SET author = REPLACE (author, 'STEVEN', 'STEPHEN')
WHERE author LIKE '%FEUERSTEIN, STEVEN%';
END;


PROCEDURE pay_out_balance (
 account_id_in IN accounts.id%TYPE)
  IS
  l_balance_remaining NUMBER;
  BEGIN
  LOOP
   l_balance_remaining := account_balance (account_id_in);
   IF l_balance_remaining < 1000
       THEN
            EXIT;
   ELSE
        apply_balance (account_id_in, l_balance_remaining);
   END IF;
  END LOOP;
END pay_out_balance;
/*I obtain the name and balance of an account from its
ID. I then check to see if the balance is too low. If it is, I explicitly raise an exception,
which stops my program from continuing*/

1 PROCEDURE check_account (
 2 account_id_in IN accounts.id%TYPE)
 3 IS
 4 l_balance_remaining NUMBER;
 5 l_balance_below_minimum EXCEPTION;
 6 l_account_name accounts.name%TYPE;
 7 BEGIN
 8 SELECT name
 9 INTO l_account_name
10 FROM accounts
11 WHERE id = account_id_in;
12
13 l_balance_remaining := account_balance (account_id_in);
14
15 DBMS_OUTPUT.PUT_LINE (


16 'Balance for ' || l_account_name ||
17 ' = ' || l_balance_remaining);
18
19 IF l_balance_remaining < 1000
20 THEN
21 RAISE l_balance_below_minimum;
/*TheEXCEPTION keyworddenotes theendof theexecutablesection andthebeginningof theexception section in which
errors are handled.*/
22 END IF;
23
24 EXCEPTION
25 WHEN NO_DATA_FOUND
/*This query retrieves the name for the account. If there is no account for this ID, the database raises the predefined
NO_DATA_FOUND exception, causing the program to stop.*/
26 THEN
27 -- No account found for this ID
28 log_error (...);
29 RAISE;
30 WHEN l_balance_below_minimum
31 THEN
32 log_error (...);
33 RAISE VALUE_ERROR;
34 END;





