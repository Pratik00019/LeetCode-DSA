# Write your MySQL query statement below
Select class
From Courses
Group by class
Having Count(*) >=5