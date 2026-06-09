WITH TEMP AS(
    SELECT id, departmentId, name, salary ,DENSE_RANK() OVER (PARTITION BY departmentId ORDER BY Salary DESC) as rn FROM Employee
)

SELECT d.name as Department, T.name as Employee, t.salary as Salary  FROM Temp t
JOIN Department d
ON d.id=t.departmentId
AND t.rn<=3

