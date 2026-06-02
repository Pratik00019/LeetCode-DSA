# Write your MySQL query statement below
WITH Temp AS 
    (SELECT num,COUNT(*) as count FROM MyNumbers GROUP BY num) 

SELECT MAX(t.num) as num FROM MyNumbers n
JOIN TEMP t
ON t.num=n.num AND t.count=1