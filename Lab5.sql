/*
1. Produce a list of rows showing sales date, product number, order number, sales amount,
tax amount from the SALES table and sort it by column tax amount in ascending order.
*/

SELECT SALES_DATE,PRODUCT_ID,ORDER_ID,SALES_AMOUNT,TAX_AMOUNT FROM SALES ORDER BY TAX_AMOUNT asc;

/*
2. Produce a list of rows showing sales date, product number, order number, sales amount,
tax amount from the SALES table and sort it by column sales amount and tax amount in
ascending order.
*/

SELECT SALES_DATE,PRODUCT_ID,ORDER_ID,SALES_AMOUNT,TAX_AMOUNT FROM SALES ORDER BY SALES_AMOUNT,TAX_AMOUNT asc;


/*
3. Produce a list of rows showing order number, sales date, product number, sales amount,
tax amount from the SALES table and sort it by order number in descending order.
*/

SELECT ORDER_ID,SALES_DATE,PRODUCT_ID,SALES_AMOUNT,TAX_AMOUNT FROM SALES ORDER BY ORDER_ID desc;
