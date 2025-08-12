-- Sales Trend Analysis Using Aggregations
-- Objective: Analyze monthly revenue and order volume

SELECT 
    EXTRACT(YEAR FROM order_date) AS year, 
    EXTRACT(MONTH FROM order_date) AS month, 
    SUM(amount) AS total_revenue, 
    COUNT(DISTINCT order_id) AS total_volume
FROM 
    online_sales
GROUP BY 
    EXTRACT(YEAR FROM order_date), 
    EXTRACT(MONTH FROM order_date)
ORDER BY 
    year, month;

-- To limit results to specific time periods, for example, the last 6 months
-- Example: Filter for last 6 months (you can adjust the date range as needed)
SELECT 
    EXTRACT(YEAR FROM order_date) AS year, 
    EXTRACT(MONTH FROM order_date) AS month, 
    SUM(amount) AS total_revenue, 
    COUNT(DISTINCT order_id) AS total_volume
FROM 
    online_sales
WHERE 
    order_date >= '2025-02-01'  -- Adjust the date filter as needed
GROUP BY 
    EXTRACT(YEAR FROM order_date), 
    EXTRACT(MONTH FROM order_date)
ORDER BY 
    year, month;

-- Get the top 3 months by sales
SELECT 
    EXTRACT(YEAR FROM order_date) AS year, 
    EXTRACT(MONTH FROM order_date) AS month, 
    SUM(amount) AS total_revenue, 
    COUNT(DISTINCT order_id) AS total_volume
FROM 
    online_sales
GROUP BY 
    EXTRACT(YEAR FROM order_date), 
    EXTRACT(MONTH FROM order_date)
ORDER BY 
    total_revenue DESC
LIMIT 3;
---resulting Table Format:
---Year	Month	Total Revenue	Total Volume

--2025	01	15000	350
--2025	02	13000	320
--2025	03	17000	370


