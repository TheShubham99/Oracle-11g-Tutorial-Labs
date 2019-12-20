/* What are Cursors
<:--------------
Oracle creates a memory area, known as context area, for processing an SQL statement, which contains all information needed for processing the statement.

A cursor is a pointer to this context area. PL/SQL controls the context area through a cursor.
A cursor holds the rows (one or more) returned by a SQL statement.
The set or rows the cursor holds is referred to as the active set.

You can name a cursor so that it could be referred to in a program to fetch and process the rows returned by the SQL statement, one at a time.

There are two types of cursors.
1-Implicit cursor
2-Explicit cursor

Implicit cursor
<:-------------
Implicit cursors are automatically created by Oracle whenever an SQL statement is executed.
Whenever a DML statement is issued, an implicit cursor is associated with this statement.

For INSERT operations, the cursor holds the data that needs to be inserted.
For UPDATE and DELETE operations, the cursor identifies the rows that would be affected.

Cursor Attributes...(most recent implicit cursor)
%FOUND
%ISOPEN
%NOTFOUND
%ROWCOUNT
 */
 
CREATE OR REPLACE PROCEDURE PROCESS_CUSTOMER
( c_id IN customer.customer_id%TYPE)
AS

TYPE CUSTOMER_REC IS RECORD
(
FIRST_NAME VARCHAR2(50),
LAST_NAME VARCHAR2(50)
);

c_rec CUSTOMER_REC;
total_rows NUMBER;

BEGIN
SELECT FIRST_NAME, LAST_NAME
INTO
c_rec
FROM customer
WHERE customer_id=c_id;

--SQL is the default name of the implicit cursor.
IF SQL%FOUND THEN
total_rows := SQL%ROWCOUNT;
DBMS_OUTPUT.PUT_LINE (total_rows || ' customers selected...');
END IF;

DBMS_OUTPUT.PUT_LINE ('First Name: ' || c_rec.first_name);
DBMS_OUTPUT.PUT_LINE ('Last Name: ' || c_rec.last_name);
END;

EXECUTE PROCESS_CUSTOMER(10);

/* Explicit cursor
<:-------------
A cursor is the name for a structure in memory, called a private SQL area, which the server allocates at runtime for each SQL statement.

If the program used any variable in the SQL statement, the cursor also contains the memory address of these variables.

How to code an explicit cursor...
1- DECLARE
2- OPEN
3- FETCH one or more times
4- CLOSE
 */

 /* Retrieving a row using Explicit Cursor
<:------------------------------------
 */


 CREATE OR REPLACE PROCEDURE PROCESS_CUSTOMER
( c_id IN customer.customer_id%TYPE)
AS
c_fname customer.first_name%TYPE;
c_lname customer.last_name%TYPE;
c_city customer.city%TYPE;
c_country customer.country%TYPE;

-- creating a cursor
CURSOR cust_cursor IS
SELECT first_name, last_name, city, country
FROM customer
WHERE customer_id=c_id;

BEGIN
-- opening a cursor
OPEN cust_cursor;

-- fetch a cursor
FETCH cust_cursor
INTO c_fname, c_lname, c_city, c_country;

DBMS_OUTPUT.PUT_LINE ('First Name: ' || c_fname);
DBMS_OUTPUT.PUT_LINE ('Last Name: ' || c_lname);
DBMS_OUTPUT.PUT_LINE ('City: ' || c_city);
DBMS_OUTPUT.PUT_LINE ('Country: ' || c_country);

CLOSE cust_cursor;
END;

EXECUTE PROCESS_CUSTOMER(10);

Retrieving more than a row using Explicit Cursor
<:----------------------------------------------
CREATE OR REPLACE PROCEDURE PROCESS_CUSTOMER
( c_id IN customer.customer_id%TYPE)
AS
c_fname customer.first_name%TYPE;
c_lname customer.last_name%TYPE;
c_city customer.city%TYPE;
c_country customer.country%TYPE;

-- creating a cursor
CURSOR cust_cursor IS
SELECT first_name, last_name, city, country
FROM customer
WHERE customer_id=c_id;

BEGIN
-- opening a cursor
OPEN cust_cursor;

LOOP
-- fetch a cursor
FETCH cust_cursor
INTO c_fname, c_lname, c_city, c_country;

EXIT WHEN cust_cursor%NOTFOUND;

DBMS_OUTPUT.PUT_LINE ('First Name: ' || c_fname);
DBMS_OUTPUT.PUT_LINE ('Last Name: ' || c_lname);
DBMS_OUTPUT.PUT_LINE ('City: ' || c_city);
DBMS_OUTPUT.PUT_LINE ('Country: ' || c_country);
END LOOP;
CLOSE cust_cursor;
END;

EXECUTE PROCESS_CUSTOMER(10);

/* Using Record in Cursor
<:--------------------
 */
 CREATE OR REPLACE PROCEDURE PROCESS_CUSTOMER
( c_id IN customer.customer_id%TYPE)
AS

-- creating a cursor
CURSOR cust_cursor IS
SELECT first_name, last_name, city, country
FROM customer
WHERE customer_id=c_id;

c_rec cust_cursor%ROWTYPE;
BEGIN
-- opening a cursor
OPEN cust_cursor;

LOOP
-- fetch a cursor
FETCH cust_cursor
INTO c_rec;

EXIT WHEN cust_cursor%NOTFOUND;

DBMS_OUTPUT.PUT_LINE ('First Name: ' || c_rec.first_name);
DBMS_OUTPUT.PUT_LINE ('Last Name: ' || c_rec.last_name);
DBMS_OUTPUT.PUT_LINE ('City: ' || c_rec.city);
DBMS_OUTPUT.PUT_LINE ('Country: ' || c_rec.country);
END LOOP;
CLOSE cust_cursor;
END;

EXECUTE PROCESS_CUSTOMER(10);

/* Cursor FOR Loop
<:-------------
Oracle database opens a cursor, declares a record by using %ROWTYPE against the cursor, fetches each
row into a record, and then closes the loop when all the rows have been fetched.
 */
FOR customer_rec IN
(
SELECT * FROM customer WHERE customer_id = 10;
)
LOOP
DBMS_OUTPUT.PUT_LINE(customer_id.last_name);
END LOOP;


CREATE OR REPLACE PROCEDURE PROCESS_CUSTOMER
( c_id IN customer.customer_id%TYPE)
AS

BEGIN
FOR c_rec IN (
SELECT first_name, last_name, city, country
FROM customer
WHERE customer_id=c_id)

LOOP
DBMS_OUTPUT.PUT_LINE ('First Name: ' || c_rec.first_name);
DBMS_OUTPUT.PUT_LINE ('Last Name: ' || c_rec.last_name);
DBMS_OUTPUT.PUT_LINE ('City: ' || c_rec.city);
DBMS_OUTPUT.PUT_LINE ('Country: ' || c_rec.country);
END LOOP;

END;

EXECUTE PROCESS_CUSTOMER(10);

/* Cursor Variable and Reference Cursor
<:----------------------------------
You can pass a cursor variable as an argument to a procedure or a function.
 */
CREATE OR REPLACE FUNCTION get_names
(
c_id IN NUMBER
)
-- it means, it is returning a cursor result set
RETURN SYS_REFCURSOR

AS

l_return SYS_REFCURSOR;

BEGIN
OPEN l_return FOR
SELECT first_name, last_name
FROM customer
WHERE customer_id=c_id;

RETURN l_return;
END get_names;

CREATE OR REPLACE PROCEDURE display_names
AS
c_rec SYS_REFCURSOR;
c_fname VARCHAR2(50);
c_lname VARCHAR2(50);

BEGIN
c_rec := get_names(10);
LOOP
FETCH c_rec INTO c_fname, c_lname;
EXIT WHEN c_rec%NOTFOUND;
DBMS_OUTPUT.PUT_LINE ('First Name: ' || c_fname);
DBMS_OUTPUT.PUT_LINE ('Last Name: ' || c_lname);
END LOOP;
END;

EXECUTE display_names(10);
