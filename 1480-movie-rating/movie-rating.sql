/* Write your T-SQL query statement below */
WITH Temp as (
    SELECT u.name, COUNT(*) as cnt
    FROM MovieRating m
    JOIN Users u ON u.user_id=m.user_id
    GROUP BY u.name
),
Temp2 as (
   SELECT m.title,
          AVG(r.rating*1.0) as avg
   FROM Movies m
   JOIN MovieRating r
   ON m.movie_id=r.movie_id
   WHERE FORMAT(r.created_at,'yyyy-MM')='2020-02'
   GROUP BY m.title
)

SELECT results
FROM
(
    SELECT TOP 1 name AS results
    FROM Temp
    ORDER BY cnt DESC, name
) t1

UNION ALL

SELECT results
FROM
(
    SELECT TOP 1 title AS results
    FROM Temp2
    ORDER BY avg DESC, title
) t2;


