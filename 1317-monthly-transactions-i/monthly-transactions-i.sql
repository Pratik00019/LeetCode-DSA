/* Write your T-SQL query statement below */
SELECT 
    FORMAT(trans_date, 'yyyy-MM') AS month,
    country,
    COUNT(*) as trans_count,
    SUM(CASE WHEN state = 'approved' then 1
    ELSE 0
    END) as approved_count, SUM(amount) as trans_total_amount,
    SUM(
        CASE WHEN state ='approved' then amount 
        ELSE 0
        END
    ) as approved_total_amount 
FROM Transactions
GROUP BY FORMAT(trans_date, 'yyyy-MM'), country
ORDER BY month