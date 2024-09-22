# Write your MySQL query statement below
SELECT user_id, count(follower_id) followers_count
FROM Followers
Group by user_id
order by user_id asc