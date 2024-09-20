# Write your MySQL query statement below
SELECT 
    query_name, 
    ROUND(AVG(rating/position),2) as quality,
    round(SUM(rating<3)*100/COUNT(query_name),2)
    as poor_query_percentage
FROM Queries
WHERE query_name IS NOT NULL
GROUP BY query_name
