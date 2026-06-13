# Write your MySQL query statement below
WITH Temp AS 
    (SELECT num,COUNT(*) as count FROM MyNumbers GROUP BY num HAVING (COUNT(*)=1)) 

SELECT MAX(num) as num FROM Temp