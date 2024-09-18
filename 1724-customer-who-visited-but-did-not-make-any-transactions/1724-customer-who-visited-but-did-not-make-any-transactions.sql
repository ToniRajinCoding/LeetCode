# Write your MySQL query statement below
SELECT v.customer_id, COUNT(v.customer_id) as count_no_trans FROM VISITS v LEFT JOIN TRANSACTIONS t ON v.visit_id = t.visit_id 
WHERE t.visit_id IS NULL
GROUP BY v.customer_id
