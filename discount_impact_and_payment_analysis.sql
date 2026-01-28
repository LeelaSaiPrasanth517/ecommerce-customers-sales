-- Discount Impact Analysis

-- Revenue Lost Due to Discount

SELECT 
    SUM(quantity * price * discount) AS revenue_lost_due_to_discount
    FROM transactions;

-- Percentage of Revenue Lost to Discounts

SELECT 
    (SUM(quantity * price * discount) / SUM(quantity * price)) * 100 AS percentage_revenue_lost_to_discounts
    FROM transactions;

-- Average Discount Given per Transaction
SELECT 
    AVG(discount) AS average_discount_per_transaction
    FROM transactions;

-- Discount vs Quantity Sold

SELECT 
    discount,
    SUM(quantity) AS total_quantity_sold
    FROM transactions
    GROUP BY discount
    ORDER BY discount;

-- Payment Method Analysis

-- Total Transactions by Payment Method

SELECT 
    paymentmethod,
    COUNT(*) AS total_orders
FROM transactions
GROUP BY paymentmethod;  

-- Revenue by Payment Method

SELECT 
    paymentmethod,
    SUM(quantity * price * (1 - discount)) AS total_revenue
FROM transactions
GROUP BY paymentmethod;
