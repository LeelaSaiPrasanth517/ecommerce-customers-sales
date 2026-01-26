# 📊 Ecommerce Sales Analysis using SQL

## 📌 Project Overview

This project focuses on analyzing ecommerce transaction data using **SQL** to extract meaningful business insights. The goal is to simulate a **real-world data analyst workflow**, where raw transactional data is transformed into actionable insights that can help stakeholders make informed decisions.

The dataset is provided in CSV format and contains **customer, product, transaction, payment, and demographic information**. All analysis is performed using SQL on a single-table dataset.

---

## 🎯 Objectives

* Analyze overall sales and revenue performance
* Understand customer behavior and segmentation
* Identify top-performing products and categories
* Analyze the impact of discounts and payment methods
* Perform time-based trend analysis using SQL date functions
* Generate business insights and recommendations

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

## ❓ Key Business Questions Answered

### 1️⃣ Sales & Revenue Analysis

* What is the total revenue?
* What is the total revenue after discounts?
* What is the average order value (AOV)?
* How do sales vary month-over-month?
* Which month generates the highest revenue?

### 2️⃣ Product & Category Performance

* Which product categories generate the highest revenue?
* Which categories sell the most in terms of quantity?
* What are the top-selling products?
* Which categories receive the highest discounts?

### 3️⃣ Customer Analysis

* How many unique customers are there?
* Who are the top customers by total spend?
* What is the average spend per customer?
* How many repeat vs one-time customers exist?

### 4️⃣ Time-Based Analysis

* Monthly order and revenue trends
* Orders by day of the week
* Peak sales periods

### 5️⃣ Discount Impact Analysis

* How much revenue is lost due to discounts?
* Do higher discounts lead to higher quantities sold?
* Which categories are most affected by discounts?

### 6️⃣ Payment Method Analysis

* Most commonly used payment methods
* Revenue contribution by payment method
* Comparison of COD vs online payments

### 7️⃣ Location & Demographic Analysis

* Revenue and orders by customer location
* Spending patterns by age group and gender
* Relationship between income group and spending
* Loyalty score vs customer spend

---

## 🛠️ Tools & Technologies Used

* **Database:** PostgreSQL / MySQL (any SQL-based RDBMS)
* **Language:** SQL
* **Data Source:** CSV file
* **Concepts Used:**

  * Aggregations
  * Group By & Having
  * Subqueries
  * Window Functions
  * Date & Time Functions
  * Conditional Logic (CASE)

---

## 📈 Key Insights (Sample)

* Certain product categories contribute disproportionately to total revenue
* High-loyalty customers tend to spend more on average
* Discounts increase order quantity but reduce net revenue
* Specific locations show higher average order values
* Sales exhibit clear monthly trends and seasonality

---

## 💡 Business Recommendations

* Focus marketing efforts on high-revenue categories
* Introduce loyalty-based offers for high-value customers
* Optimize discount strategies to balance volume and profitability
* Promote preferred payment methods to reduce operational costs
* Target high-spending locations with personalized campaigns

---

## 📁 Project Structure

```
Ecommerce-Sales-SQL-Project/
│
├── data/
│   └── ecommerce_sales_data.csv
│
├── sql_queries/
│   ├── sales_analysis.sql
│   ├── customer_analysis.sql
│   ├── product_analysis.sql
│   └── time_analysis.sql
│
├── insights/
│   └── business_insights.md
│
└── README.md
```

---

## 🚀 Conclusion

This project demonstratethe ability to use SQL to analyze real-world ecommerce data, derive insights, and translate them into business recommendations. It reflects the core skills expected from a Data Analyst, including data exploration, analytical thinking, and business understanding.
