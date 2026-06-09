/* Write your T-SQL query statement below */
WITH Temp AS (
    SELECT pid ,lat ,lon, tiv_2016,COUNT(tiv_2015) OVER(PARTITION BY tiv_2015) as cnt FROM Insurance
),
/* Write your T-SQL query statement below */
Temp2 AS (
    SELECT pid ,lat ,lon, tiv_2016,COUNT(*) OVER(PARTITION BY lat,lon) as cnt FROM Insurance
)

SELECT ROUND(SUM(t1.tiv_2016 * 1.0),2) as tiv_2016 FROM Temp t1
JOIN Temp2 t2
ON t1.pid=t2.pid
AND t1.cnt > 1
AND t2.cnt = 1


