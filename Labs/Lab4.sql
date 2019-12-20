-- Oracle_39_Lab 4 (Exercises with Answers)_Lab-4

/*
1. Produce a list of rows showing sales date, product number, order number, sales amount,
tax amount and a calculated column (sum of sales amount and tax amount) from the
SALES table.
*/

SELECT SALES_DATE,PRODUCT_ID,ORDER_ID,SALES_AMOUNT,TAX_AMOUNT, SUM(SALES_AMOUNT+TAX_AMOUNT)AS "SUM" FROM SALES group by SALES_DATE, PRODUCT_ID, ORDER_ID, SALES_AMOUNT, TAX_AMOUNT;

/*
2. Produce a list of rows showing all columns from the SALES table where quantity plus 10 is
greater than or equal to 20
*/

SELECT * FROM SALES S WHERE S.QUANTITY+10>=20;

/*
3. Produce a list of rows showing sales date, product number, order number, sales amount,
tax amount and a calculated column (total amount minus 30) from the SALES table.
*/

SELECT S.SALES_DATE,S.PRODUCT_ID,S.ORDER_ID,S.SALES_AMOUNT,S.TAX_AMOUNT, S.TOTAL_AMOUNT-30 AS "New Col" FROM SALES S WHERE S.QUANTITY+10>=20;

