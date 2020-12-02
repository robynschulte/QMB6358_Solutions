.mode column
.header on
.output FT_Student_Employees.out

 

SELECT
StudentRegister.FirstName,
StudentRegister.LastName,
StudentRegister.NID,
Employees.Department,
Employees.Job_Title,
StudentRegister.GPA
FROM
StudentRegister
INNER JOIN
Employees
ON StudentRegister.NID = Employees.NID
WHERE StudentRegister.Status = 'Full time';

 

.output stdout