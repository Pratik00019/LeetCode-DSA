/* Write your T-SQL query statement below */
SELECT query_name,ROUND(Avg(rating/ (position * 1.0)),2) as quality,
    ROUND(Avg(CASE WHEN rating <3 then 1.0
    ELSE 0
    END)*100,2)
    as poor_query_percentage
FROM Queries
GROUP BY query_name