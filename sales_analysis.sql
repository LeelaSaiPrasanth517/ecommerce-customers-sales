SELECT * FROM transactions

--Total Revenue

SELECT sum(quantity*price) as Total_revenue
FROM transactions

--Total Revenue After Discount

SELECT sum(quantity*price*(1-Discount))  as Revenue_after_discount
FROM transactions

--Average Order Value 

SELECT 
    AVG(quantity * price * (1 - discount)) AS avg_order_value
FROM transactions;

--Total Number of Orders

SELECT count(DISTINCT transactionid) as total_orders
FROM transactions