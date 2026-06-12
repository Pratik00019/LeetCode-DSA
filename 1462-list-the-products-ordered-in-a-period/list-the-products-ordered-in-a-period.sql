/* Write your T-SQL query statement below */
WITH TEMP AS (
    SELECT product_id,FORMAT(order_date,'yyyy-MM') as date ,SUM(unit) as sm
    FROM Orders
    GROUP BY product_id,FORMAT(order_date,'yyyy-MM')
    HAVING(SUM(unit)>=100) AND FORMAT(order_date,'yyyy-MM') ='2020-02'
)
SELECT p.product_name, o.sm as unit FROM TEMP o
JOIN Products p
ON o.product_id =p.product_id 

