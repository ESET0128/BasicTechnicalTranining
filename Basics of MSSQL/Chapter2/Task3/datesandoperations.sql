-- Basic Task

CREATE TABLE Students2024 (ID INT, Name VARCHAR(50));
CREATE TABLE Students2025 (ID INT, Name VARCHAR(50));

INSERT INTO Students2024 VALUES
(1,'Ravi'),(2,'Asha'),(3,'John'),(4,'Meera'),(5,'Kiran'),
(6,'Divya'),(7,'Lokesh'),(8,'Anita'),(9,'Rahul'),(10,'Sneha');

INSERT INTO Students2025 VALUES
(2,'Asha'),(4,'Meera'),(5,'Kiran'),(11,'Prakash'),(12,'Vidya'),
(13,'Neha'),(14,'Manoj'),(15,'Ramesh'),(16,'Lata'),(17,'Akash');

-- 1. Show a list of all student names (unique only).
select ID, Name from Students2024 union
select ID, Name from Students2025;

-- 2. Show a list of all student names (including duplicates).
select ID, Name from Students2024 union all
select ID, Name from Students2025;


CREATE TABLE Employees (EmpID INT, Name VARCHAR(50), Department VARCHAR(20));

INSERT INTO Employees VALUES 
(1,'Ananya','HR'),(2,'Ravi','IT'),(3,'Meera','Finance'),
(4,'John','IT'),(5,'Divya','Marketing'),(6,'Sneha','Finance'),
(7,'Lokesh','HR'),(8,'Asha','IT'),(9,'Kiran','Finance'),(10,'Rahul','Sales');


-- 3. Display employee names in UPPERCASE and LOWERCASE.
select upper (Name) as hello from Employees;
select lower (Name) as hello from Employees;

   
-- 4. Find the length of each employee’s name.
select len(Name) from Employees;
   
-- 5. Show only the first 3 letters of each name.
select substring(Name,1,3) from Employees;
   
-- 6. Replace Finance department with Accounts.
select REPLACE(Department,'Finance','Accounts') as replaced_dept from Employees;
   
-- 7. Create a new column showing "Name - Department" using CONCAT.
select CONCAT(Name,' - ',Department) as concatColumn from Employees;


CREATE TABLE Projects (ProjectID INT, Name VARCHAR(50), StartDate DATE, EndDate DATE);
INSERT INTO Projects VALUES 
(1,'Bank App','2025-01-01','2025-03-15'),
(2,'E-Commerce','2025-02-10','2025-05-20');

-- Date Functions (DATEDIFF, DATEADD, GETDATE, NOW)

-- 8. Show today’s date using GETDATE().
select getdate()
   
-- 9. Find the duration (in days) of each project using DATEDIFF.
select DATEDIFF(DAY,StartDate,EndDate) from Projects;
   
-- 10. Add 10 days to each project’s EndDate using DATEADD.
select dateadd(day,10,EndDate) from Projects;
   
-- 11. Find how many days are left until each project ends. (Hint: Use DATEDIFF with GETDATE())

SELECT  ProjectID, Name, StartDate, EndDate, DATEDIFF(DAY, GETDATE(), EndDate) AS Days_Left FROM Projects;



CREATE TABLE Contacts (ID INT, Name VARCHAR(50), Email VARCHAR(50), Phone VARCHAR(20));
INSERT INTO Contacts VALUES
(1,'Ravi','ravi@gmail.com',NULL),
(2,'Asha',NULL,'9876543210'),
(3,'John',NULL,NULL);









----------------------------------------------------------------------



-- CAST, CONVERT, CASE
-- ##### Tasks:

-- 1. Convert today’s date into DD/MM/YYYY format using CONVERT.
SELECT CONVERT(VARCHAR(10), GETDATE(), 103) AS Today_DDMMYYYY;
   
-- 2. Convert a float 123.456 into an integer using CAST.
SELECT CAST(123.456 AS INT) AS Converted_Integer;

   
select * from Students2024;
select * from Students2025;

select * from Employees;
select * from Projects;





