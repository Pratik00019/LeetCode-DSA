/* Write your T-SQL query statement below */
WITH Temp AS
(
    SELECT id, LEAD(student,1) OVER(ORDER BY id) as student
    FROM Seat
),
Temp2 AS
(
    SELECT id, LAG(student,1) OVER(ORDER BY id) as prev
    FROM Seat
),
Temp3 AS
(
    SELECT * FROM Temp
    WHERE id%2!=0
    UNION ALL
    SELECT * FROM Temp2 
    WHERE id%2=0
)

SELECT id,ISNULL(student, (
    SELECT TOP 1 s.student FROM Seat s
    ORDER BY id DESC
)) as student FROM Temp3
ORDER BY id


