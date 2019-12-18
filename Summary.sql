-- Oracle_118_Business Requirement
/* -----------------------------
1. Group by sales month, customer country, sales manager and product name
Give the total quantity and total volume
For the year 2015
Show only when total sales volume is greater than 500
Sort by sales month and customer country

2. Change all the values with product name 'Mobile Cover' to 'Mobile Accessories'
Include all the sales irrespective of a salesperson exists or not
Usage: Function, Alias Name, CASE statement, Aggregation, Equi Join, Left Outer Join, Filtering, Filtering at Group Level,
Grouping, Sorting
*/

SELECT * FROM sales;
SELECT * FROM customer;
SELECT * FROM salesperson;
SELECT * FROM product;

-- 1st Query
SELECT TRUNC(s.SALES_DATE, 'mon'),c.COUNTRY,sp.JOB_TITLE,
sum(s.TOTAL_AMOUNT),SUM(s.QUANTITY) FROM SALES s, CUSTOMER c,SALESPERSON sp
where s.SALES_DATE BETWEEN '01-01-2015' AND '31-12-2015'
group by TRUNC(s.SALES_DATE, 'mon'),c.COUNTRY,sp.JOB_TITLE,
s.TOTAL_AMOUNT,s.QUANTITY;

-- 2nd Query
SELECT trunc(sales_date, 'MON') as sales_month,
c.country,
sp.job_title,
CASE WHEN p.product_name ='Mobile Cover' THEN 'Mobile Accessories' ELSE p.product_name END as product_name,
SUM(quantity) as QUANTITY_SOLD,
SUM(total_amount) as TOTAL_AMOUNT
FROM sales s, customer c, salesperson sp, product p
WHERE s.customer_id = c.customer_id
AND s.salesperson_id = sp.salesperson_id
AND s.product_id = p.product_id
AND s.sales_date BETWEEN '01-jan-2015' AND '31-jan-2015'
GROUP BY TRUNC(sales_date, 'MON'),
c.country,
sp.job_title,
(CASE WHEN p.product_name ='Mobile Cover' THEN 'Mobile Accessories' ELSE p.product_name END)
HAVING SUM(total_amount) > 300
ORDER BY TRUNC(sales_date, 'MON'), c.country;

