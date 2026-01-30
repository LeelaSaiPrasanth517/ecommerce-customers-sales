# 📊 Ecommerce Sales Analysis using SQL

## 📌 Project Overview
This project analyzes an ecommerce transactions dataset using **SQL** to extract meaningful business insights.  
It demonstrates a **real-world data analyst workflow**, where raw transactional data is transformed into actionable insights for business decision-making.

---

## 🎯 Objectives
- Analyze overall sales and revenue performance  
- Identify time-based trends in orders and revenue  
- Understand customer behavior (repeat vs one-time customers)  
- Evaluate product and category performance  
- Assess the impact of discounts and payment methods  
- Perform location and demographic-based analysis  
- Translate SQL outputs into business insights  

---

## 🗂️ Dataset Description
**File:** `ecommerce_sales_data.csv`

The dataset contains **100,000 ecommerce transactions** with attributes such as:
- Transaction details
- Customer information (location, age, income group, loyalty score)
- Product and category data
- Price and discount values
- Payment methods
- Transaction date and time

---

## 🛠️ Tools & Technologies
- **Database:** PostgreSQL  
- **Language:** SQL  
- **Concepts Used:**
  - Aggregations (`SUM`, `COUNT`, `AVG`)
  - `GROUP BY` & `HAVING`
  - Subqueries & CTEs
  - Date & time functions
  - Conditional logic (`CASE`)
  - Business-focused analysis

---


## 🗂️ Dataset Description

**Table Name:** `ecommerce_transactions`

| Column Name          | Description                   |
| -------------------- | ----------------------------- |
| TransactionID        | Unique transaction identifier |
| CustomerID           | Unique customer identifier    |
| ProductID            | Unique product identifier     |
| ProductCategory      | Category of the product       |
| Quantity             | Number of items purchased     |
| Price                | Price per unit                |
| Discount             | Discount applied (percentage) |
| TransactionDate      | Date and time of transaction  |
| PaymentMethod        | Payment type used             |
| CustomerLocation     | Customer city/location        |
| CustomerAge          | Age of the customer           |
| CustomerGender       | Gender of the customer        |
| CustomerIncomeGroup  | Income group classification   |
| CustomerLoyaltyScore | Loyalty score of customer     |

---


---

## 🔍 Analysis Performed

### 1️⃣ Sales & Revenue Analysis
- Total revenue and average order value (AOV)
- Monthly revenue trends
- Highest revenue month identification

### 2️⃣ Time-Based Analysis
- Orders and revenue by month
- Orders by day of the week
- Peak order hours
- Seasonal trend identification

### 3️⃣ Customer Analysis
- Unique customer count
- Repeat vs one-time customer classification
- Customer spending behavior

### 4️⃣ Product & Category Performance
- Revenue and quantity sold by product category
- Identification of top-performing categories
- Analysis of low-performing categories

### 5️⃣ Discount & Payment Impact
- Revenue impact of discounts
- Relationship between discount rate and sales volume
- Revenue contribution by payment method

### 6️⃣ Location & Demographic Analysis
- Revenue by customer location
- Spending patterns by income group
- Loyalty score vs customer spend analysis

---

## 🧠 Key Business Insights
- The platform generated **₹106.6M+ in total revenue** across **100,000 orders**.
- Monthly revenue shows **seasonal variation**, with certain months outperforming others.
- **Repeat customers contribute the majority of revenue**, indicating strong customer retention.
- A small number of product categories drive most of the revenue.
- Discounts increase order volume but reduce net revenue, impacting profitability.
- Customer spending varies significantly across locations and income groups.

Detailed insights are available in **`insights.md`**.

---

## 📌 Business Recommendations
- Focus on **retention strategies** to maximize customer lifetime value.
- Plan **marketing campaigns around peak sales months**.
- Optimize discount strategies to balance revenue and profitability.
- Prioritize high-performing product categories.
- Use demographic and location data for targeted promotions.
