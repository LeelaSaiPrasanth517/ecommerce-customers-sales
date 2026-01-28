--Revenue by Product Category

SELECT productcategory, 
SUM(quantity * price * (1 - discount)) AS revenue
FROM transactions
GROUP BY productcategory
ORDER BY revenue DESC;

--Average Order Value by Product Category

SELECT productcategory, 
AVG(quantity * price * (1 - discount)) AS average_order_value   
FROM transactions
GROUP BY productcategory
ORDER BY average_order_value DESC;

--Top 5 Product Categories by Revenue

SELECT productcategory,
SUM(quantity * price * (1 - discount)) AS total_revenue
FROM transactions
GROUP BY productcategory
ORDER BY total_revenue DESC
LIMIT 5;

