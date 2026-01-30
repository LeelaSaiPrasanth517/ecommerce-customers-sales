--Orders by Time Period (Monthly)

SELECT count(*)as Total_orders, date_trunc('month',transactiondate) as transactionmonth
FROM transactions
GROUP BY transactionmonth
ORDER BY transactionmonth

--Revenue by Month

SELECT sum(quantity*price*(1-discount)) as RevenuebyMonth, date_trunc('month',transactiondate) as transactionmonth
FROM transactions
GROUP BY transactionmonth
ORDER BY transactionmonth

--Month with Highest Revenue

with rpm as (SELECT sum(quantity*price*(1-discount)) as RevenuebyMonth, date_trunc('month',transactiondate) as transactionmonth
            FROM transactions
            GROUP BY transactionmonth
            ORDER BY transactionmonth)

SELECT RevenuebyMonth as Highest_Revenue, transactionmonth
FROM rpm
ORDER BY Highest_Revenue desc
LIMIT 1;

--Average Order Value by Month

with rpm as (SELECT sum(quantity*price*(1-discount)) as RevenuebyMonth, date_trunc('month',transactiondate) as transactionmonth
            FROM transactions
            GROUP BY transactionmonth),

     tom as (SELECT count(*)as Total_orders, date_trunc('month',transactiondate) as transactionmonth
            FROM transactions
            GROUP BY transactionmonth)

SELECT (RevenuebyMonth/Total_orders) as Average_Order_Value, rpm.transactionmonth
FROM rpm
JOIN tom
ON rpm.transactionmonth = tom.transactionmonth
ORDER BY rpm.transactionmonth;

--Orders by Day of Week
SELECT count(*) as Total_orders, to_char(transactiondate, 'Day') as Day_of_Week
FROM transactions
GROUP BY Day_of_Week
ORDER BY Total_orders DESC;

--Revenue by Day of Week

SELECT sum(quantity*price*(1-discount)) as RevenuebyDay, to_char(transactiondate, 'Day') as Day_of_Week
FROM transactions
GROUP BY Day_of_Week
ORDER BY RevenuebyDay DESC;

--Average Order Value by Day of Week

with rpd as (SELECT sum(quantity*price*(1-discount)) as RevenuebyDay, to_char(transactiondate, 'Day') as Day_of_Week
            FROM transactions
            GROUP BY Day_of_Week),

     tod as (SELECT count(*)as Total_orders, to_char(transactiondate, 'Day') as Day_of_Week
            FROM transactions
            GROUP BY Day_of_Week)

SELECT (RevenuebyDay/Total_orders) as Average_Order_Value, rpd.Day_of_Week
FROM rpd
JOIN tod
ON rpd.Day_of_Week = tod.Day_of_Week
ORDER BY rpd.Day_of_Week;

--Orders by Hour of Day

SELECT count(*) as Total_orders, date_part('hour',transactiondate) as Hour_of_Day
FROM transactions
GROUP BY Hour_of_Day
ORDER BY Hour_of_Day;

--Revenue by Hour of Day

SELECT sum(quantity*price*(1-discount)) as RevenuebyHour, date_part('hour',transactiondate) as Hour_of_Day
FROM transactions
GROUP BY Hour_of_Day
ORDER BY Hour_of_Day;

--Average Order Value by Hour of Day

with rph as (SELECT sum(quantity*price*(1-discount)) as RevenuebyHour, date_part('hour',transactiondate) as Hour_of_Day
            FROM transactions
            GROUP BY Hour_of_Day),

     toh as (SELECT count(*)as Total_orders, date_part('hour',transactiondate) as Hour_of_Day
            FROM transactions
            GROUP BY Hour_of_Day)

SELECT (RevenuebyHour/Total_orders) as Average_Order_Value, rph.Hour_of_Day
FROM rph
JOIN toh
ON rph.Hour_of_Day = toh.Hour_of_Day
ORDER BY rph.Hour_of_Day;

--Orders by Quarter

SELECT count(*)as Total_orders, date_trunc('quarter',transactiondate) as transactionquarter
FROM transactions
GROUP BY transactionquarter
ORDER BY transactionquarter;

--Revenue by Quarter

SELECT sum(quantity*price*(1-discount)) as RevenuebyQuarter, date_trunc('quarter',transactiondate) as transactionquarter
FROM transactions
GROUP BY transactionquarter
ORDER BY transactionquarter;

--Average Order Value by Quarter

with rpq as (SELECT sum(quantity*price*(1-discount)) as RevenuebyQuarter, date_trunc('quarter',transactiondate) as transactionquarter
            FROM transactions
            GROUP BY transactionquarter),

     toq as (SELECT count(*)as Total_orders, date_trunc('quarter',transactiondate) as transactionquarter
            FROM transactions
            GROUP BY transactionquarter)

SELECT (RevenuebyQuarter/Total_orders) as Average_Order_Value, rpq.transactionquarter
FROM rpq
JOIN toq
ON rpq.transactionquarter = toq.transactionquarter
ORDER BY rpq.transactionquarter;

--Orders by Year

SELECT count(*)as Total_orders, date_trunc('year',transactiondate) as transactionyear
FROM transactions
GROUP BY transactionyear
ORDER BY transactionyear;

--Revenue by Year

SELECT sum(quantity*price*(1-discount)) as RevenuebyYear, date_trunc('year',transactiondate) as transactionyear
FROM transactions
GROUP BY transactionyear
ORDER BY transactionyear;

--Average Order Value by Year

with rpy as (SELECT sum(quantity*price*(1-discount)) as RevenuebyYear, date_trunc('year',transactiondate) as transactionyear
            FROM transactions
            GROUP BY transactionyear),

     toy as (SELECT count(*)as Total_orders, date_trunc('year',transactiondate) as transactionyear
            FROM transactions
            GROUP BY transactionyear)

SELECT (RevenuebyYear/Total_orders) as Average_Order_Value, rpy.transactionyear
FROM rpy
JOIN toy
ON rpy.transactionyear = toy.transactionyear
ORDER BY rpy.transactionyear;

--Orders by Date

SELECT count(*)as Total_orders, date_trunc('day',transactiondate) as transactiondate
FROM transactions
GROUP BY transactiondate
ORDER BY transactiondate;

--Revenue by Date

SELECT sum(quantity*price*(1-discount)) as RevenuebyDate, date_trunc('day',transactiondate) as transactiondate
FROM transactions
GROUP BY transactiondate
ORDER BY transactiondate;

--Average Order Value by Date

with rpd as (SELECT sum(quantity*price*(1-discount)) as RevenuebyDate, date_trunc('day',transactiondate) as transactiondate
            FROM transactions
            GROUP BY transactiondate),

     tod as (SELECT count(*)as Total_orders, date_trunc('day',transactiondate) as transactiondate
            FROM transactions
            GROUP BY transactiondate)

SELECT (RevenuebyDate/Total_orders) as Average_Order_Value, rpd.transactiondate
FROM rpd
JOIN tod
ON rpd.transactiondate = tod.transactiondate
ORDER BY rpd.transactiondate;

--Peak Order Hour

WITH orders_by_hour AS (
    SELECT date_part('hour', transactiondate) AS order_hour,
           COUNT(*) AS total_orders
    FROM transactions
    GROUP BY order_hour
)
SELECT order_hour, total_orders
FROM orders_by_hour
ORDER BY total_orders DESC
LIMIT 1;

--Lowest Revenue Day

WITH revenue_by_day AS (
    SELECT date_trunc('day', transactiondate) AS order_day,
           SUM(quantity * price * (1 - discount)) AS total_revenue
    FROM transactions
    GROUP BY order_day
)

SELECT order_day, total_revenue
FROM revenue_by_day
ORDER BY total_revenue ASC
LIMIT 1;
