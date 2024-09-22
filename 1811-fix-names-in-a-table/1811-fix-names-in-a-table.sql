# Write your MySQL query statement below
SELECT user_id, concat(UPPER(LEFT(name,1)),LOWER(SUBSTRING(name,2,LENGTH(name)))) name
FROM users
ORDER BY user_id