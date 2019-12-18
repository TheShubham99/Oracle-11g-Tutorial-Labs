/*INNER JOIN, LEFT OUTER JOIM, RIGHT OUTER JOIN, CROSS JOIN, NATURAL JOIN
Joining 3 and 4 table.
Note: NATURAL JOIN is not used most of the times.
Oracle_64_Lab 8 (Exercises with Answers)_Joins


1. Produce a list which returns all rows from the SALES and PRODUCT tables where there is
a matching PRODUCT_ID value in both the SALES and PRODUCT tables.
*/

SELECT * FROM SALES
JOIN PRODUCT 
ON SALES.PRODUCT_ID=PRODUCT.PRODUCT_ID;

/*
2. Produce a list which returns all rows from the SALES table and only those rows from the
PRODUCT table where the joined field PRODUCT_ID is equal.
*/

SELECT * FROM SALES
LEFT JOIN PRODUCT 
ON SALES.PRODUCT_ID=PRODUCT.PRODUCT_ID;

--Note: If a PRODUCT_ID value in the SALES table does not exist in the PRODUCT
--table, all fields in the PRODUCT table will display as <null> in the result set.

/*
3. Produce a list which returns all rows from the PRODUCT table and only those rows from
the SALES table where the joined field PRODUCT_ID is equal.
*/

SELECT * FROM SALES 
RIGHT JOIN PRODUCT 
ON SALES.PRODUCT_ID=PRODUCT.PRODUCT_ID;

/*
4. Produce a list which returns all rows from the SALES and PRODUCT table irrespective of
PRODUCT_ID match between these tables. (PRODUCT_ID can match between both these
tables or it might not match)
*/

SELECT * FROM SALES 
full OUTER JOIN PRODUCT 
on SALES.PRODUCT_ID = PRODUCT.PRODUCT_ID;




