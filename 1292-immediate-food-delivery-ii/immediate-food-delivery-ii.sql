# Write your MySQL query statement below

WITH temp AS (
    SELECT customer_id, MIN(order_date) as orderdate
    FROM Delivery
    GROUP BY customer_id
)

SELECT ROUND(AVG((CASE 
        WHEN d.order_date=d.customer_pref_delivery_date THEN 1
        ELSE 0
        END
        )*100),2) as immediate_percentage 
FROM Delivery d
INNER JOIN temp t
ON t.customer_id=d.customer_id AND t.orderdate=d.order_date


