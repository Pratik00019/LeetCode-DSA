/* Write your T-SQL query statement below */
WITH Temp AS(
    SELECT visited_on, SUM(amount) as amt
    FROM Customer
    GROUP BY visited_on
)

SELECT visited_on, total_amt as amount, ROUND(total_amt / 7.0 ,2 ) as average_amount 
FROM ( 
    SELECT visited_on, amt, SUM(amt) OVER(
        ORDER BY visited_on
        ROWS BETWEEN 6 PRECEDING AND CURRENT ROW  
    ) as total_amt,ROW_NUMBER() OVER(
        ORDER BY visited_on
    ) as rn
    FROM Temp t
) x
WHERE rn>6
