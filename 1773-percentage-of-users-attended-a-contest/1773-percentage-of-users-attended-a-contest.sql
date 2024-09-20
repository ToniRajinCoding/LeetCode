# Write your MySQL query statement below
SELECT contest_id, ROUND(
    (COUNT(DISTINCT user_id) * 100 / (SELECT COUNT(DISTINCT user_id) FROM users)
),2) as percentage
FROM Register
GROUP BY contest_id
ORDER BY 2 desc, 1