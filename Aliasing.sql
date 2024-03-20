-- Aliasing

SELECT FirstName AS Fname
FROM SQLTutorial.dbo.EmployeeDemographics

SELECT FirstName + ' ' + LastName AS Name
FROM SQLTutorial.dbo.EmployeeDemographics

SELECT Avg(Age) AS AvgAge
FROM SQLTutorial.dbo.EmployeeDemographics

SELECT Demo.EmployeeID, Sal.Salary
FROM SQLTutorial.dbo.EmployeeDemographics AS Demo
JOIN SQLTutorial.dbo.EmployeeSalary AS Sal
	ON Demo.EmployeeID = Sal.EmployeeID

SELECT Demo.EmployeeID, Demo.FirstName, Demo.FirstName, Sal.JobTitle, Ware.Age
FROM SQLTutorial.dbo.EmployeeDemographics Demo
LEFT JOIN SQLTutorial.dbo.EmployeeSalary Sal
	ON Demo.EmployeeID = Sal.EmployeeID
LEFT JOIN SQLTutorial.dbo.WarehouseEmployeeDemographics Ware
	ON Demo.EmployeeID = Ware.EmployeeID