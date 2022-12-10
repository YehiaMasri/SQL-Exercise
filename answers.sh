# Basics Queries

# 1. Get all the names of students in the database

SELECT name from students;

# 2. Get all the data of students above 30 years old 

SELECT * from students where age>30;

# 3. Get the names of the females who are 30 years old

SELECT name FROM students WHERE Gender="F" AND Age=30;
# 4. Get the number of Points of Alex

SELECT points FROM students where id=1;

# 5. Add yourself as a new student (your name, your age...)

INSERT INTO students (Name, Age, Gender, Points)
VALUES('yahya', '22', 'M', '600');

# 6. Increase the points of Basma because she solved a new exercise 

UPDATE students
SET Points='550'
WHERE id='2';

# 7.Decrease the points of Alex because he's late today

UPDATE students
SET Points='150'
WHERE id='1';

# Creating Table

CREATE TABLE Graduates (
ID Integer Not Null Primary key AUTOINCREMENT,
Name Text Not Null Unique,
Age Integer,
Gender Text,
Points Integer,
Graduation Text
);

# 1.Copy Layal's data from students to graduates

INSERT INTO Graduates (Name, Age, Gender, Points)
SELECT Name, Age, Gender, Points FROM students
WHERE ID=4; 
# 2.Add the graduation date previously mentioned to Layal's record in graduates

UPDATE Graduates 
SET Graduation = '08/09/2018'
WHERE ID='1';

# 3.Remove Layal's record from students

DELETE FROM students 
WHERE id='4';

# Joins

# 1.Produce a table that contains, for each employee, his/her name, company name, and company date.

SELECT employees.Name, employees.Company, companies.Date 
FROM employees
INNER JOIN companies ON companies.Name = employees.Company;

# 2. Find the name of employees that work in companies made before 2000.

SELECT employees.Name
FROM employees
INNER JOIN companies ON companies.Name=employees.Company
WHERE companies.Date<2000;

# 3.Find the name of company that has a graphic designer.

SELECT employees.Name
FROM employees
INNER JOIN companies ON companies.Name = employees.Company
WHERE employees.Role='Graphic Designer';

