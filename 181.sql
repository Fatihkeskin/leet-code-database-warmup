# Employees Earning More Than Their Managers
# Write an SQL query to find the employees who earn more than their managers.
# +-------------+---------+
# | Column Name | Type    |
# +-------------+---------+
# | id          | int     |
# | name        | varchar |
# | salary      | int     |
# | managerId   | int     |
# +-------------+---------+

SELECT name AS Employee
FROM Employee employees
WHERE salary > (SELECT salary 
                FROM Employee managers
                WHERE managers.id = employees.managerId)