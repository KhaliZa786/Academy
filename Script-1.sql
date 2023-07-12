SELECT Name, Financing, id
FROM academy.Departments

Select academy.Groups.Name, academy.Groups.Rating
FROM academy.Groups

select Surname,Salary /Premium *100, Salary/(Salary+Premium)*100
FROM academy.Teachers

select CONCAT('The dean of faculty ', Name,  ' is ', Dean, '.')
FROM academy.Faculties

select Surname
FROM academy.Teachers
Where isProfessor=1 and Salary > 1050

SELECT Name
FROM academy.Departments
where Financing <11000 or Financing > 25000

SELECT Name
FROM academy.Faculties
WHERE Name <> 'Computer Science'

SELECT Surname
FROM academy.Teachers
WHERE isProfessor =0

SELECT Surname,Position,Salary,Premium
FROM academy.Teachers
WHERE Premium BETWEEN 160 and 550 and isAssistant = 1

SELECT Surname,Salary
FROM academy.Teachers
where isAssistant = 1

SELECT Surname,Position
from academy.Teachers
WHERE EmploymentDate < '2000-01-01'

SELECT Name
FROM academy.Departments
Where Name < 'Software Development'

SELECT Surname
FROM academy.Teachers
WHERE isAssistant  = 1 and Salary + Premium <= 1500

Select Name
From academy.Groups
WHERE Rating BETWEEN 2 and 4 and Year = 5

SELECT Surname
FROM academy.Teachers
Where isAssistant=1 and (Salary < 550 or Premium < 200)
