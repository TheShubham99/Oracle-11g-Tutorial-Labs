-- Oracle_53_Lab 7 (Exercises with Answers)_Group-BY
---
--1. Write a query that shows the number of rows in SALES table.

     SELECT COUNT(*) FROM SALES; 

--2. Produce a list which shows total sales volume broken by sales date from SALES table.

     SELECT SALES_DATE,SUM(QUANTITY) FROM SALES GROUP BY SALES_DATE; 

--3. Produce a list which shows maximum sales volume broken by sales date and order number from SALES table.

    SELECT SALES_DATE,MAX(QUANTITY) FROM SALES GROUP BY SALES_DATE,ORDER_ID;

--4. Produce a list which shows minimum sales volume broken by sales date from SALES table and minimum sales
-- volume is less than 100. (Hint: use HAVING clause)
     
     SELECT MIN(QUANTITY) AS "MIN" FROM SALES S GROUP BY SALES_DATE,QUANTITY HAVING S.QUANTITY<100;
