/* Write your T-SQL query statement below */
SELECT activity_date as day,COUNT(DISTINCT(user_id)) as active_users 
FROM Activity
WHERE DATEDIFF(DAY, activity_date, '2019-07-27') BETWEEN 0 AND 29
GROUP BY activity_date