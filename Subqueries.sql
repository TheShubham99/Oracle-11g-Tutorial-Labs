-- Oracle_106_What is a SUB Query
-- ----------------------------
-- A SUB Query is a query within a query which can return one or more rows.

SELECT * FROM sales
WHERE customer_id =
(
SELECT customer_id FROM customer
WHERE last_name='JOSEPH'
)

SELECT * FROM sales
WHERE customer_id IN
(
SELECT customer_id FROM CUSTOMER WHERE REGION='SOUTH'
)

-- Oracle_107_Sub queries on multiple columns (Pairwise Comparision)
-------------------
SELECT sales_date, order_id, customer_id, product_id, unit_price
FROM sales
WHERE (product_id, unit_price) IN
( SELECT product_id, unit_price
FROM sales
WHERE sales_date='01-JAN-2015'
)

-- Oracle_108_Sub queries on multiple columns (Non-Pairwise Comparision)
---------------------------------------------------------------------
SELECT sales_date, order_id, customer_id, product_id, unit_price
FROM sales
WHERE product_id IN
( SELECT product_id FROM sales
WHERE sales_date='01-JAN-2015')
AND unit_price IN
( SELECT unit_price
FROM sales
WHERE sales_date='01-JAN-2015'
)

-- Oracle_109_Sub queries in the FROM clause
---------------------------------------
SELECT s.sales_date, s.order_id, s.customer_id,
s.salesperson_id, s.total_amount,
st.sales_total
FROM sales s,
(SELECT sum(total_amount) as sales_total FROM sales) st

SELECT s.sales_date, s.order_id, s.customer_id,
s.salesperson_id, s.total_amount,
st.sales_total
FROM sales s,
(SELECT sales_date, sum(total_amount) as sales_total FROM sales
GROUP BY sales_date) st
WHERE s.sales_date=st.sales_date

-- Oracle_111_Scalar Sub queries
---------------------------
SELECT s.sales_date, s.order_id, s.customer_id,
s.salesperson_id, s.total_amount,
(
SELECT sum(total_amount) as sales_total FROM sales
) AS sales_total
FROM sales s

-- Oracle_112_Correlated SUB Query
-----------------------------
Correlated subquery is a subquery (a query nested inside another query) that uses values from the outer query and evaluated
once for each row processed by the outer query.

-- SUB QUERY
SELECT * FROM sales
WHERE customer_id =
(
SELECT customer_id FROM customer
WHERE last_name='JOSEPH'
);

SELECT * FROM sales
WHERE customer_id IN
(
SELECT customer_id FROM CUSTOMER WHERE REGION='SOUTH'
);

-- Sub queries on multiple columns (Pairwise Comparision)
SELECT sales_date, order_id, customer_id, product_id, unit_price
FROM sales
WHERE (product_id, unit_price) IN
(
SELECT product_id, unit_price
FROM sales
WHERE sales_date='01-JAN-2015'
);

-- Sub queries on multiple columns (Non-Pairwise Comparision)
SELECT sales_date, order_id, customer_id, product_id, unit_price
FROM sales
WHERE product_id IN
(
SELECT product_id FROM sales
WHERE sales_date='01-JAN-2015'
)
AND unit_price IN
(
SELECT unit_price
FROM sales
WHERE sales_date='01-JAN-2015'
);

-- Sub queries in the FROM clause
SELECT s.sales_date, s.order_id, s.customer_id,
s.salesperson_id, s.total_amount,
st.sales_total
FROM sales s,
(
SELECT sum(total_amount) as sales_total FROM sales
) st;

SELECT s.sales_date, s.order_id, s.customer_id,
s.salesperson_id, s.total_amount,
st.sales_total
FROM sales s,
(
SELECT sales_date, sum(total_amount) as sales_total FROM sales
GROUP BY sales_date) st
WHERE s.sales_date=st.sales_date;

-- Sub queries in the WITH clause
With st as
(
SELECT sales_Date, sum(total_amount) as sales_total
from sales
group by sales_date
)
SELECT s.sales_date, s.order_id, s.customer_id, s.salesperson_id,
s.total_amount, s.sales_amount
FROM sales s, st
WHERE s.sales_date = st.sales_date;

-- Scalar Sub queries
SELECT s.sales_date, s.order_id, s.customer_id,
s.salesperson_id, s.total_amount,
(
SELECT sum(total_amount) as sales_total FROM sales
)
AS sales_total
FROM sales s;

-- Correlated SUB Query
SELECT * FROM sales x
WHERE TOTAL_AMOUNT > (
SELECT AVG(TOTAL_AMOUNT) FROM sales y
WHERE y.customer_id=x.customer_id
)
ORDER BY customer_id;
