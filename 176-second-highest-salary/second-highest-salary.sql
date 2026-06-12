/* Write your T-SQL query statement below */
-- SELECT MAX(salary) as SecondHighestSalary
-- FROM Employee
-- WHERE Salary < (
--     SELECT MAX(salary) FROM Employee
-- )

SELECT MAX(SecondHighestSalary) AS SecondHighestSalary
FROM
(
    SELECT salary AS SecondHighestSalary,
           DENSE_RANK() OVER
           (
               ORDER BY salary DESC
           ) AS rn
    FROM Employee
) t
WHERE rn = 2;
