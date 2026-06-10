/* Write your T-SQL query statement below */
With Temp as (
    SELECT id, email,ROW_NUMBER() OVER (PARTITION BY email ORDER BY id) as rn
    FROM Person
)
DELETE FROM Temp
WHERE rn > 1