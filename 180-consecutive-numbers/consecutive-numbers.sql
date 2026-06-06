/* Write your T-SQL query statement below */
-- SELECT DISTINCT l1.num as ConsecutiveNums 
-- FROM Logs l1
-- JOIN Logs l2
-- ON l1.id+1=l2.id
-- JOIN Logs l3
-- ON l2.id+1=l3.id
-- WHERE l1.num=l2.num AND l2.num=l3.num

WITH Temp AS
(
    SELECT id, num,LAG(num,1) OVER (ORDER BY id) as consecutive1,LAG(num,2) OVER (ORDER BY id) as consecutive2
    FROM LOGS
)

SELECT DISTINCT (Temp.num) as ConsecutiveNums
FROM Temp
WHERE temp.consecutive2=Temp.num AND temp.consecutive1=Temp.num
