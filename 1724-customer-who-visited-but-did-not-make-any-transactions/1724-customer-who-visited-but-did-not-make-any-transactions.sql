SELECT customer_id, COUNT(transaction_id IS NULL) as count_no_trans
FROM VISITS v LEFT JOIN TRANSACTIONS t on v.visit_id = t.visit_id
WHERE transaction_id IS NULL
GROUP BY customer_id