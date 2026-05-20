/* Write your T-SQL query statement below */

WITH TempTable AS (
    SELECT managerId, COUNT(*) as TempCount
    FROM Employee e
    GROUP BY managerId
    HAVING managerId is NOT NULL
)
SELECT e.name
FROM Employee e
JOIN TempTable t
ON e.id=t.managerId 
AND t.TempCount>=5

