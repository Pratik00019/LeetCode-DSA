/* Write your T-SQL query statement below */
SELECT * FROM Users
WHERE mail COLLATE Latin1_General_CS_AS
      LIKE '[A-Za-z]%@leetcode.com'
AND mail NOT LIKE '%[^A-Za-z0-9_.-]%@leetcode.com'