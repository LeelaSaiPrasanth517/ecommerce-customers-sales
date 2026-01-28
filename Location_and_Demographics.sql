--Revenue by Location

SELECT customerlocation, 
SUM(quantity * price * (1 - discount)) AS total_revenue
FROM transactions
GROUP BY customerlocation;

--Average Order Value by Location

SELECT customerlocation, 
AVG(quantity * price * (1 - discount)) AS average_order_value
FROM transactions
GROUP BY customerlocation;

--Top 5 Locations by Revenue

SELECT customerlocation,
SUM(quantity * price * (1 - discount)) AS total_revenue
FROM transactions
GROUP BY customerlocation
ORDER BY total_revenue DESC
LIMIT 5;

--Customer Demographics Analysis

SELECT customerlocation, 
COUNT(DISTINCT customerid) AS unique_customers,
COUNT(*) AS total_orders
FROM transactions
GROUP BY customerlocation;  

--Average Spend per Customer by Location

SELECT customerlocation, 
AVG(total_spend) AS average_spend_per_customer 
FROM
(SELECT customerlocation, customerid, 
SUM(quantity * price * (1 - discount)) AS total_spend
FROM transactions
GROUP BY customerlocation, customerid) t
GROUP BY customerlocation;

-- Loyalty Score vs Spend

SELECT customerlocation, 
AVG(customerloyaltyscore) AS average_loyalty_score,
SUM(quantity * price * (1 - discount)) AS total_spend
FROM transactions
GROUP BY customerlocation;
