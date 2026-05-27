-- SELECT ROUND(COUNT(DISTINCT(d1.player_id) / (SELECT COUNT(distinct(player_id)) FROM Activity),2)) as fraction
-- FROM Activity d1
-- JOIN Activity d2
-- ON d1.player_id=d2.player_id
--     AND DATEDIFF(d1.event_date,d2.event_date) = 1

WITH temp AS
    (SELECT player_id,MIN(event_date) as event_date
    FROM Activity
    GROUP BY player_id)

SELECT ROUND(COUNT(d.player_id)* 1.0 / (SELECT COUNT(distinct(player_id)) FROM Activity) * 1.0,2) as fraction
FROM Activity d
JOIN temp t
ON t.player_id=d.player_id AND DATEDIFF(Day,t.event_date,d.event_date) = 1
