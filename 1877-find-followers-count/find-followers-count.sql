# Write your MySQL query statement below
SELECT user_id,COUNT(*) as followers_count
FROM Followers aw
GROUP BY user_id
ORDER BY user_id