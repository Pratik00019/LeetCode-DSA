/* Write your T-SQL query statement below */
-- WITH Temp AS
-- (
--     SELECT product_id,
--            MAX(change_date) AS nd
--     FROM Products
--     WHERE change_date <= '2019-08-16'
--     GROUP BY product_id
-- )

-- SELECT p.product_id, ISNULL(pr.new_price,10) as price
-- FROM (
--     SELECT DISTINCT product_id as product_id
--     FROM Products
-- ) p
-- LEFT JOIN temp t
-- ON t.product_id=p.product_id
-- LEFT JOIN products pr
-- ON pr.product_id= t.product_id AND pr.change_date = t.nd


WITH TEMP AS(
    SELECT product_id,new_price, ROW_NUMBER() OVER 
        (PARTITION BY (product_id) ORDER BY (change_date) DESC) as rn
    FROM Products
    WHERE change_date<='2019-08-16'
)

SELECT p.product_id, ISNULL(t.new_price,10) as price
FROM (
    SELECT DISTINCT product_id
    FROM Products 
) p
LEFT JOIN temp t
on p.product_id=t.product_id
AND t.rn=1
