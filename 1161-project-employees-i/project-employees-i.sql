/* Write your T-SQL query statement below */
SELECT p.project_id, ROUND(AVG(e.experience_years * 1.0),2) as average_years
FROM Project p
LEFT JOIN Employee e
ON e.employee_id=p.employee_id
GROUP BY p.project_id
ORDER BY p.project_id