-- alter session set nls_date_format = 'DD MM YY';

-- SHOW PARAMETER nls_date_format;


--Lab 1 

-- Produce a List Show all records from sales;
SELECT * FROM SALES;

-- Produce a List of rows showing all records from PRODUCT.
SELECT * FROM PRODUCT;

-- Customer all records
SELECT * FROM CUSTOMER;

-- Show sales_date, order no, prod no, customer number,quantity, total amount of sales table
SELECT SALES_DATE, PRODUCT_ID, CUSTOMER_ID, QUANTITY, SUM(TOTAL_AMOUNT) FROM SALES GROUP BY PRODUCT_ID, CUSTOMER_ID, SALES_DATE, QUANTITY;

-- Product no,name,color.
SELECT PRODUCT_ID,PRODUCT_NAME,COLOR FROM PRODUCT;