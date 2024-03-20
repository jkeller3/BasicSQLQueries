/*
Updating/Deleting Data
*/

SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics

--UPDATE SQLTutorial.dbo.EmployeeDemographics
--SET Age = 35
--WHERE FirstName = 'Darryl' AND LastName = 'Philbin'

-- DELETE FROM SQLTutorial.dbo.EmployeeDemographics
-- WHERE EmployeeID=1005


-- Method to test what you are deleting before you delete it
SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics
WHERE EmployeeID = 1004