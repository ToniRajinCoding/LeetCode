# Write your MySQL query statement below
SELECT 
    DATE_FORMAT(trans_date, '%Y-%m') AS month,
    country,
    count(state) as trans_count,
    SUM(if(state="approved",1,0)) as approved_count,
    sum(amount) as trans_total_amount,
    sum(if(state="approved",amount,0)) as approved_total_amount
FROM Transactions
GROUP BY month, country