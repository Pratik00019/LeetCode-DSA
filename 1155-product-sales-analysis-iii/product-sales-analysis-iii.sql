/* Write your T-SQL query statement below */
WITH Temp AS 
    (SELECT product_id as id,MIN(year) as first_year FROM Sales GROUP BY product_id)

SELECT s.product_id, t.first_year, s.quantity, s.price FROM Sales s
INNER JOIN Temp t
ON t.id=s.product_id AND t.first_year = s.year