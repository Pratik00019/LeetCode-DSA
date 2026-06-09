WITH Temp AS
(
    SELECT *,
           COUNT(*) OVER(PARTITION BY tiv_2015) AS tiv_cnt,
           COUNT(*) OVER(PARTITION BY lat, lon) AS loc_cnt
    FROM Insurance
)

SELECT ROUND(
       SUM(tiv_2016 * 1.0),
       2
) AS tiv_2016
FROM Temp
WHERE tiv_cnt > 1
AND loc_cnt = 1;