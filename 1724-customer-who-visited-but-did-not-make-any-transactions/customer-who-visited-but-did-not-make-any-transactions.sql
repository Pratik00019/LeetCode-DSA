/* Write your T-SQL query statement below */

-- SELECT customer_id, COUNT(*) AS count_no_trans 
-- FROM Visits v
-- WHERE NOT EXISTS (
--     SELECT 1 
--     FROM Transactions t
--     WHERE v.visit_id=t.visit_id
-- )
-- GROUP BY v.customer_id
-- ORDER BY COUNT(*) DESC


SELECT v.customer_id,COUNT(*) as count_no_trans 
FROM Visits v
LEFT JOIN Transactions t
ON t.visit_id=v.visit_id
WHERE t.visit_id is NULL
GROUP BY v.customer_id


