/* Write your T-SQL query statement below */
SELECT e.employee_id,e.department_id 
FROM Employee e
WHERE primary_flag='Y' OR EXISTS (
    SELECT COUNT(employee_id) FROM Employee e2
    WHERE e.employee_id = e2.employee_id
    GROUP BY employee_id HAVING COUNT(*)=1)
