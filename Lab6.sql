-- Oracle_48_Lab 6 (Exercises with Answers)_SET-Operators
--------
--1. Produce a list of ALL rows showing order number by combining data from SALES and SALES_HISTORY table.

    SELECT * FROM SALES S,SALES_HISTORY H
    ORDER BY S.ORDER_ID,H.ORDER_ID;
    
--2. Produce a list of DISTINCT rows from SALES and SALES_HISTORY table using column order number.

  SELECT DISTINCT(SALES.ORDER_ID) FROM SALES UNION SELECT DISTINCT(SALES_HISTORY.ORDER_ID) FROM SALES_HISTORY;

--3. Produce a list of COMMON rows between SALES and SALES_HISTORY table using column order number.
    Select * from SALES intersect Select * from SALES_HISTORY where SALES_HISTORY.SALESPERSON_ID != SALES_HISTORY.SALESPERSON_ID;


--4. Produce a list of rows which are present in SALES table and are not present in SALES_HISTORY table using
-- column order number.
    SELECT * FROM SALES
    MINUS 
    SELECT * FROM SALES_HISTORY;
