/* Write your T-SQL query statement below */
SELECT MAX(salary) as SecondHighestSalary
FROM Employee
WHERE Salary != (
    SELECT MAX(salary) FROM Employee
)