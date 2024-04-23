/*

Subqueries: In the Select, From, and Where statements

*/

SELECT *
FROM EmployeeSalary

-- Subquery in Select
SELECT EmployeeID, Salary, (SELECT AVG(Salary) FROM EmployeeSalary) as AllAvgSalary
FROM EmployeeSalary

-- Same as above but using Partition By
SELECT EmployeeID, Salary, AVG(Salary) over () as AllAvgSalary
FROM EmployeeSalary

-- Example showing why it doesn't work with Group By
SELECT EmployeeID, Salary, AVG(Salary) as AllAvgSalary
FROM EmployeeSalary
Group By EmployeeID, Salary
Order By 1,2

-- Subquery in From
SELECT a.EmployeeID, AllAvgSalary
FROM (SELECT EmployeeID, Salary, AVG(Salary) over () as AllAvgSalary
	FROM EmployeeSalary) a
	-- Note, CTEs or temp tables tend to be better in this case

-- Subquery in Where
SELECT EmployeeID, JobTitle, Salary
FROM EmployeeSalary
WHERE EmployeeID in (
		SELECT EmployeeID
		FROM EmployeeDemographics
		WHERE Age > 30)