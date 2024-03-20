-- CTEs

-- Creates a temp table/subquery that you can then use to create new queries off of.
WITH CTE_Employee AS 
(SELECT FirstName, LastName, Gender, Salary
, COUNT(Gender) OVER (Partition BY Gender) AS TotalGender
, AVG(Salary) OVER (PARTITION BY Gender) as AvgSalary
FROM SQLTutorial..EmployeeDemographics emp
JOIN SQLTutorial..EmployeeSalary sal
	ON emp.EmployeeID = sal.EmployeeID
WHERE Salary > '45000'
)
SELECT FirstName, Salary
FROM CTE_Employee