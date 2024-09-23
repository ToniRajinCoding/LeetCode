# Write your MySQL query statement below
SELECT sell_date, COUNT(DISTINCT product) num_sold, GROUP_CONCAT(DISTINCT product ORDER BY product) products
FROM Activities 
GROUP BY sell_date