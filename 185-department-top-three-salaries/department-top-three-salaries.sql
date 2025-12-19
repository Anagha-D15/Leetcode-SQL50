# Write your MySQL query statement below
SELECT Department,  Employee,  Salary
FROM 
(SELECT e.name AS Employee, DENSE_RANK() OVER(PARTITION BY departmentId ORDER BY salary DESC) as RANKING, d.name AS Department, e.salary AS Salary #Department, Employee, Salary
FROM Employee e INNER JOIN Department d
ON e.departmentId = d.id 
) AS t1
WHERE RANKING < 4



