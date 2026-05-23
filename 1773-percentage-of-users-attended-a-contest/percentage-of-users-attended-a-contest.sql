/* Write your T-SQL query statement below */

SELECT contest_id, ROUND((COUNT(user_id)/ 
    ((SELECT Count(*) from Users)*1.0)*100),2) as percentage
FROM Register r
GROUP BY contest_id
ORDER BY percentage DESC,contest_id ASC
