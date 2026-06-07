-- SELECT TOP 1 q1.person_name
-- FROM Queue q1
-- JOIN Queue q2
-- ON q1.turn >= q2.turn
-- GROUP BY q1.turn, q1.person_name
-- HAVING SUM(q2.weight) <= 1000
-- ORDER BY SUM(q2.weight) DESC;

WITH Temp as (
    SELECT person_name , SUM(weight) OVER (ORDER BY turn) as sum FROM Queue
)

SELECT TOP 1 t.person_name FROM Temp t
WHERE t.sum<=1000
ORDER BY t.sum DESC