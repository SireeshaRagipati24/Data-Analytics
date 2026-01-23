-- 1. Total Revenue by Gender

SELECT gender, SUM(purchase_amount) AS revenue
FROM customers
GROUP BY gender;

-- 2. Discount Users Who Spent Above Average

SELECT customer_id, purchase_amount
FROM customers
WHERE discount_applied = 'Yes' AND purchase_amount >= (SELECT AVG(purchase_amount) FROM customers);


-- 3. Top 5 Products with Highest Average Rating

SELECT item_purchased, ROUND(AVG(review_rating::numeric),2) AS "Average_Product_Rating"
FROM customers
GROUP BY item_purchased
ORDER BY AVG(review_rating) DESC
LIMIT 5;


-- 4. Compare Average Purchase Between Shipping Types

SELECT shipping_type, ROUND(AVG(purchase_amount),2) AS avg_purchase
FROM customers
WHERE shipping_type IN ('Standard','Express')
GROUP BY shipping_type;


-- 5. Do Subscribed Customers Spend More?

SELECT subscription_status,
       COUNT(customer_id) AS total_customers,
       ROUND(AVG(purchase_amount),2) AS avg_spend,
       ROUND(SUM(purchase_amount),2) AS total_revenue
FROM customers
GROUP BY subscription_status
ORDER BY total_revenue DESC;


-- 6. Top 5 Products with Highest Discount Rate

SELECT item_purchased,
       ROUND(100.0 * SUM(CASE WHEN discount_applied = 'Yes' THEN 1 ELSE 0 END)/COUNT(*),2) AS discount_rate
FROM customers
GROUP BY item_purchased
ORDER BY discount_rate DESC
LIMIT 5;

-- 7. Customer Segmentation Based on Loyalty

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


-- 8. Top 3 Most Purchased Products per Category

WITH item_counts AS (
  SELECT category,
         item_purchased,
         COUNT(customer_id) AS total_orders,
         ROW_NUMBER() OVER (PARTITION BY category ORDER BY COUNT(customer_id) DESC) AS item_rank
  FROM customers
  GROUP BY category, item_purchased
)
SELECT item_rank, category, item_purchased, total_orders
FROM item_counts
WHERE item_rank <= 3;


-- 9. Repeat Buyers and Subscription Link

SELECT subscription_status,
       COUNT(customer_id) AS repeat_buyers
FROM customers
WHERE previous_purchases > 5
GROUP BY subscription_status;


-- 10. Revenue Contribution by Age Group

SELECT age_group,
       SUM(purchase_amount) AS total_revenue
FROM customers
GROUP BY age_group
ORDER BY total_revenue DESC;


-- 11. Seasonal Revenue and Average Spend

SELECT season,
       ROUND(SUM(purchase_amount),2) AS total_revenue,
       ROUND(AVG(purchase_amount),2) AS avg_purchase
FROM customers
GROUP BY season
ORDER BY total_revenue DESC;

-- 12. Payment Method Performance

SELECT payment_method,
       COUNT(customer_id) AS total_customers,
       ROUND(SUM(purchase_amount),2) AS total_revenue,
       ROUND(AVG(previous_purchases),2) AS avg_repeat_purchases
FROM customers
GROUP BY payment_method
ORDER BY total_revenue DESC;


-- 13. Top 5 Locations by Revenue

SELECT location,
       ROUND(SUM(purchase_amount),2) AS total_revenue,
       COUNT(customer_id) AS total_orders
FROM customers
GROUP BY location
ORDER BY total_revenue DESC
LIMIT 5;


-- 14. Best Performing Category-Season Combination

SELECT category, season,
       ROUND(SUM(purchase_amount),2) AS total_revenue
FROM customers
GROUP BY category, season
ORDER BY total_revenue DESC;


-- 15. KPI Summary (Dashboard View)

SELECT 
    ROUND(SUM(purchase_amount),2) AS total_revenue,
    ROUND(AVG(purchase_amount),2) AS avg_order_value,
    COUNT(DISTINCT customer_id) AS total_customers,
    COUNT(DISTINCT item_purchased) AS unique_products
FROM customers;


