# Write your MySQL query statement below

SELECT email AS Email FROM (SELECT COUNT(email) AS count, email FROM Person 
GROUP BY email) AS secondTable WHERE EmailCount > 1;