--Total Unique Customers

SELECT 
    COUNT(DISTINCT customerid) AS unique_customers
FROM transactions;

--Top 10 Customers by Spend

SELECT customerid, sum(quantity*price*(1-discount)) as Money_spent
 FROM transactions
GROUP BY customerid
ORDER BY Money_spent DESC
LIMIT 10

--Average spend across all customers

SELECT avg(Total_spend) as Average_spend FROM
(SELECT customerid, sum(quantity*price*(1-discount)) as Total_spend
FROM transactions
GROUP BY customerid)t;

--Repeat vs One-Time Customers

SELECT customerid,
    CASE 
        when order_count = 1 then 'One time'
        else 'Repeat'
    END as customer_type 
    FROM
(SELECT customerid,count(customerid) as order_count
FROM transactions 
GROUP BY customerid) t;