# 🛍️ Customer Behaviour Analysis

> **Uncovering what drives customers to buy, return, and spend more** — using SQL, Power BI, and Python on a dataset of 3,900+ retail customers.

---

## 📌 Project Overview

This end-to-end data analytics project explores customer shopping behaviour across demographics, product categories, seasons, and payment methods. The goal was to extract actionable business insights that can help a retail brand optimize marketing, inventory, and customer retention strategies.

---

## 🖥️ Dashboard Preview

![Customer Behaviour Dashboard](https://github.com/SireeshaRagipati24/Data-Analytics/blob/main/Customer_Behaviour_Analysis/Dashboard_Image.png)

> Built in **Power BI** | Interactive slicers: Gender · Category · Subscription Status · Shipping Type

---

## 📊 Key Metrics at a Glance

| Metric | Value |
|---|---|
| 👥 Total Customers | 3,900 |
| 💰 Average Purchase Amount | $59.76 |
| ⭐ Average Review Rating | 3.75 / 5 |
| 🏆 Top Revenue Category | Clothing |
| 📅 Highest Revenue Season | Fall |

---

## 🔍 Business Questions Answered

| # | Question | Technique Used |
|---|---|---|
| 1 | Which gender generates more revenue? | GROUP BY Aggregation |
| 2 | Do discount users spend above average? | Subquery |
| 3 | Top 5 highest-rated products? | ORDER BY + LIMIT |
| 4 | Standard vs Express shipping spend? | Conditional Filtering |
| 5 | Do subscribed customers spend more? | Multi-metric Aggregation |
| 6 | Which products get discounted most? | CASE WHEN + Percentage Calc |
| 7 | Customer segmentation by loyalty? | CTE + CASE WHEN |
| 8 | Top 3 products per category? | CTE + Window Function (ROW_NUMBER) |
| 9 | Do repeat buyers prefer subscriptions? | Filtered Aggregation |
| 10 | Revenue contribution by age group? | GROUP BY + ORDER BY |
| 11 | Which season drives most revenue? | Seasonal Aggregation |
| 12 | Best performing payment method? | Multi-metric Aggregation |
| 13 | Top 5 locations by revenue? | Ranked Aggregation |
| 14 | Best category-season combination? | Multi-dimensional Grouping |
| 15 | Overall KPI summary? | Dashboard-ready KPI Query |

---

## 🧠 Key Insights

- 📦 **Clothing** is the top revenue-generating category across all seasons
- 👨 **Male customers** drive higher purchase volume; female customers show higher product rating tendencies  
- 🔁 **92.7% of customers are non-subscribers** — a major opportunity for subscription conversion campaigns
- 🍂 **Fall season** records the highest revenue — ideal for seasonal promotions
- 💳 Customers using **certain payment methods** show significantly higher repeat purchase rates
- 🏅 **Loyal customers** (10+ purchases) form a small but high-value segment worth targeted retention efforts

---

## 🛠️ Tech Stack

| Tool | Purpose |
|---|---|
| **PostgreSQL** | Data querying & analysis (15 SQL queries) |
| **Power BI** | Interactive dashboard & visualization |
| **Python (Pandas, Matplotlib)** | Data cleaning & EDA |
| **Excel** | Initial data exploration |

---

## 📂 Project Structure

```
Customer_Behaviour_Analysis/
│
├── 📊 Dashboard_Image.png          # Power BI dashboard screenshot
├── 📄 Customer_Shopping_Behaviour.csv   # Raw dataset
├── 🗃️ Customer_Behaviour_Queries.sql    # All 15 SQL queries
├── 🐍 Customer_Behaviour_DA.ipynb       # Python EDA notebook
└── 📝 README.md
```

---

## 💡 SQL Highlights

**Customer Segmentation using CTE:**
```sql
WITH customer_type AS (
  SELECT customer_id, previous_purchases,
         CASE 
           WHEN previous_purchases = 1 THEN 'New'
           WHEN previous_purchases BETWEEN 2 AND 10 THEN 'Returning'
           ELSE 'Loyal'
         END AS customer_segment
  FROM customers
)
SELECT customer_segment, COUNT(*) AS "Number_of_Customers"
FROM customer_type
GROUP BY customer_segment;
```

**Top 3 Products per Category using Window Function:**
```sql
WITH item_counts AS (
  SELECT category, item_purchased,
         COUNT(customer_id) AS total_orders,
         ROW_NUMBER() OVER (PARTITION BY category ORDER BY COUNT(customer_id) DESC) AS item_rank
  FROM customers
  GROUP BY category, item_purchased
)
SELECT item_rank, category, item_purchased, total_orders
FROM item_counts
WHERE item_rank <= 3;
```

---

## 📈 What I Learned

- Writing **production-level SQL** with CTEs, Window Functions, and Subqueries
- Translating raw data into **business-ready KPIs**
- Designing **interactive dashboards** that non-technical stakeholders can use
- Identifying **revenue patterns** across demographics, seasons, and categories

---

## 🙋‍♀️ About Me

**Sireesha Ragipati** — Aspiring Data Analyst passionate about turning raw data into meaningful stories.


[![LinkedIn](https://www.linkedin.com/in/sireesha-ragipati-269a10244/)

---

*⭐ If you found this project helpful, consider giving it a star!*
