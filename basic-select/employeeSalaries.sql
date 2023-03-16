/* - Employee  Salaries
Write a query that prints a list of employee names (i.e.: the name attribute) from the Employee table in alphabetical order
*/
SELECT name FROM Employee 
WHERE salary > 2000 AND months < 10 
ORDER BY employee_id;