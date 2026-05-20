/* Write your T-SQL query statement below */
SELECT e.name,bonus
FROM Employee e
LEFT JOIN BONUS b
ON e.empId=b.empId
WHERE b.bonus is NULL 
OR b.bonus < 1000