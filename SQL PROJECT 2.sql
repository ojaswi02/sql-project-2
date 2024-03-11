CREATE DATABASE SQL_PROJECTS
USE  SQL_PROJECTS

CREATE TABLE EMPLYDETAILS (EMPID INT PRIMARY KEY,FIRSTNAME VARCHAR (20),LASTNAME VARCHAR (20),
SALARY INT,JOINDATE DATETIME,DEPARTMENT VARCHAR (30),GENDER VARCHAR(10))
DROP TABLE EMPLYDETAILS

INSERT INTO EMPLYDETAILS VALUES (1,'VIKAS','AHLAWAT',600000,'2013-12-2 11:16:00', 'IT','MALE')
INSERT INTO EMPLYDETAILS VALUES (2,'nikita','Jain',530000,'2013-02-14 11:16','HR','FEMALE')
INSERT INTO EMPLYDETAILS VALUES (3,'Ashish','Kumar',1000000,'2013-02-14 11:16','IT','MALE')
INSERT INTO EMPLYDETAILS VALUES (4,'Nikhil','Sharma',480000,'2013-02-15 11:16','HR','MALE')
INSERT INTO EMPLYDETAILS VALUES (5,'ashish','kadian',500000,'2013-02-16 11:16','paroll','MALE')

--Q1  Write a query to get all employee detail from "EmployeeDetail" table-- 
SELECT * FROM EMPLYDETAILS

--Q2 Write a query to get only "FirstName" column from "EmployeeDetail" table--
SELECT FIRSTNAME FROM EMPLYDETAILS

--Q3 ) Write a query to get FirstName in upper case as "First Name". 4) Write a query to get FirstName in upper case as "First Name".
--
select upper(firstname) 'FIRST NAME' FROM EMPLYDETAILS

--Q5 Write a query for combine FirstName and LastName and display it as "Name" (also include white space between first name & last name)--
SELECT CONCAT(FIRSTNAME, ' ', LASTNAME ) 'NAME' FROM EMPLYDETAILS 

--Q6  Select employee detail whose name is "Vikas--
SELECT * FROM EMPLYDETAILS WHERE FIRSTNAME='VIKAS'

--Q7, Q8 Get all employee detail from EmployeeDetail table whose "FirstName" start with latter 'a'.--
SELECT * FROM EMPLYDETAILS WHERE FIRSTNAME LIKE 'A%'

--Q9 9. Get all employee details from EmployeeDetail table whose "FirstName" end with 'h'--
SELECT * FROM EMPLYDETAILS WHERE FIRSTNAME LIKE '%H'

--Q10 10. Get all employee detail from EmployeeDetail table whose "FirstName" start with any single character between 'a-p'--
SELECT * FROM EMPLYDETAILS WHERE FIRSTNAME BETWEEN 'A%' AND 'P%'

--Q11 Get all employee detail from EmployeeDetail table whose "FirstName" not start with any single character between 'a-p'-
SELECT * FROM EMPLYDETAILS WHERE FIRSTNAME NOT BETWEEN 'A%' AND 'P%'

--Q12 Get all employee detail from EmployeeDetail table whose "Gender" end with 'le' and contain 4 letters. The Underscore(_) Wildcard Character represents any single character--
SELECT * FROM EMPLYDETAILS WHERE GENDER LIKE '%LE' AND GENDER = LEFT(GENDER,4)

--Q13 Get all employee detail from EmployeeDetail table whose "FirstName" start with 'A' and contain 5 letters--
SELECT * FROM EMPLYDETAILS WHERE FIRSTNAME LIKE 'A%' AND FIRSTNAME = LEFT(FIRSTNAME,5)

--Q14 Get all employee detail from EmployeeDetail table whose "FirstName" containing '%'. ex:-"Vik%as".--
SELECT * FROM EMPLYDETAILS WHERE FIRSTNAME LIKE '%' 

--Q15 Get all unique "Department" from EmployeeDetail table--
SELECT DISTINCT DEPARTMENT FROM EMPLYDETAILS

--Q16 Get the highest "Salary" from EmployeeDetail table.--
SELECT MAX(SALARY) 'HIGHEST_SALARY'FROM EMPLYDETAILS

--Q17 Get the lowest "Salary" from EmployeeDetail table--
SELECT MIN(SALARY) 'MINSALARY' FROM EMPLYDETAILS

--Q18 Show "JoiningDate" in "dd mmm yyyy" format, ex- "15 Feb 2013---------------------------------DOUBT
SELECT FORMAT(JOINDATE,'DD-MM-YYYY') 'FORMATDATE' FROM EMPLYDETAILS

--Q19 19)	Show "JoiningDate" in "yyyy/mm/dd" format, ex- "2013/02/15"--
SELECT JOINDATE FROM EMPLYDETAILS

--Q20 Show only time part of the "JoiningDate"--
SELECT FORMAT (JOINDATE,'H:mm') AS 'TIME' FROM EMPLYDETAILS

--Q21 Get only Year part of "JoiningDate"--
SELECT YEAR (JOINDATE) AS 'YEAR' FROM EMPLYDETAILS

--Q22 Get only month part of "JoiningDate"--
SELECT FORMAT (JOINDATE,'MM') AS 'MONTH' FROM EMPLYDETAILS

--Q23 Get system date--
SELECT  SYSDATETIME()

--Q24 Get UTC date.--
SELECT SYSUTCDATETIME()
--A--
SELECT FIRSTNAME,JOINDATE,GETDATE() 'CURRENT DATE',DATEDIFF(MONTH,JOINDATE,GETDATE()) 'DIFFERENCE IN MONTHS'FROM EMPLYDETAILS

--Q25 Get the first name, current date, joiningdate and diff between current date and joining date in days.--
SELECT FIRSTNAME,JOINDATE,GETDATE() 'CURRENT DATE',DATEDIFF(DAY,JOINDATE,GETDATE()) 'DIFFERENCE IN DAYS'FROM EMPLYDETAILS

--Q26 Get  all employee details from EmployeeDetail table whose joining year is 2013--
SELECT * FROM EMPLYDETAILS WHERE YEAR (JOINDATE) =2013

--Q27 Get all employee details from EmployeeDetail table whose joining month is Jan(1)--
SELECT * FROM EMPLYDETAILS WHERE MONTH (JOINDATE) =01

--Q28 Get  all employee details from EmployeeDetail table whose joining month is Jan(1)--
SELECT * FROM EMPLYDETAILS WHERE MONTH (JOINDATE) =01

--Q29 Get how many employee exist in "EmployeeDetail" table--
SELECT COUNT (FIRSTNAME)'NO. OF EMPLOYEES' FROM EMPLYDETAILS

--Q31 Select only one/top 1 record from "EmployeeDetail" table--
SELECT TOP 1 * FROM EMPLYDETAILS

--Q32  Select all employee detail with First name "Vikas","Ashish", and "Nikhil".--
SELECT * FROM EMPLYDETAILS WHERE FIRSTNAME IN ('VIKAS','ASHISH','NIKHIL')

--Q33 Select all employee detail with First name not in "Vikas","Ashish", and "Nikhil"--
SELECT * FROM EMPLYDETAILS WHERE FIRSTNAME NOT IN ('VIKAS','ASHISH','NIKHIL')

--Q34 Select first name from "EmployeeDetail" table after removing white spaces from right side--
SELECT RTRIM(FIRSTNAME) FROM EMPLYDETAILS 

--Q35 Select first name from "EmployeeDetail" table after removing white spaces from left side--
SELECT LTRIM(FIRSTNAME) FROM EMPLYDETAILS 

--Q36 Display first name and Gender as M/F.(if male then M, if Female then F)--
SELECT FIRSTNAME,GENDER ,
CASE GENDER
WHEN 'MALE' THEN 'M'
WHEN 'FEMALE' THEN 'F'
ELSE 'OTHER'
END'REMARK'
FROM EMPLYDETAILS

--Q37 Select first name from "EmployeeDetail" table prifixed with "Hello--
SELECT CONCAT('HELLO',' ',FIRSTNAME) FROM EMPLYDETAILS

--Q38 Get  employee details from "EmployeeDetail" table whose Salary greater than 600000--
SELECT * FROM EMPLYDETAILS WHERE SALARY >= 600000

--Q39 Get employee details from "EmployeeDetail" table whose Salary less than 700000--
SELECT * FROM EMPLYDETAILS WHERE SALARY <= 700000

--Q40 Get employee details from "EmployeeDetail" table whose Salary between 500000 than 600000--
SELECT * FROM EMPLYDETAILS WHERE SALARY BETWEEN 500000 AND 600000

CREATE TABLE PROJECTDETAILS (PROJECTID INT PRIMARY KEY,EMPLYDETAIL_ID INT,PROJECTNAME VARCHAR (20))
INSERT INTO PROJECTDETAILS VALUES (1,1,'TASK Track')
insert into PROJECTDETAILS values (2,1,'CLP')
INSERT INTO PROJECTDETAILS VALUES (3,1,'Survey Managment')
insert into PROJECTDETAILS values (4,2,'HR Managment')
insert into PROJECTDETAILS values (5,3,'Task Track')
insert into PROJECTDETAILS values (6,3,'GRS')
INSERT INTO PROJECTDETAILS VALUES (7,3,'DDS')
INSERT INTO PROJECTDETAILS VALUES (8,4,'HR Managment')
insert into PROJECTDETAILS values (9,6,'GL Managment')

--Q41 Give records of ProjectDetail table--
SELECT * FROM PROJECTDETAILS

--Q42 Write the query to get the department and department wise total(sum) salary from "EmployeeDetail" table.--
select DEPARTMENT,SUM(SALARY) 'TOTALSALARY' FROM EMPLYDETAILS
GROUP BY DEPARTMENT

--Q43 Write the query to get the department and department wise total(sum) salary, display it in ascending order according to salary.--
select DEPARTMENT,SUM(SALARY) 'TOTALSALARY' FROM EMPLYDETAILS
GROUP BY DEPARTMENT
ORDER BY [TOTALSALARY] ASC

--Q44 Write the query to get the department and department wise total(sum) salary, display it in descending order according to salary-
select DEPARTMENT,SUM(SALARY) 'TOTALSALARY' FROM EMPLYDETAILS
GROUP BY DEPARTMENT
ORDER BY [TOTALSALARY] DESC

--Q45 Write the query to get the department, total no. of departments, total(sum) salary with respect to department from "EmployeeDetail" table.--
select DEPARTMENT, COUNT(DEPARTMENT) 'TOTAOL NO. OF DEPT',SUM(SALARY) 'TOTALSALARY' FROM EMPLYDETAILS
GROUP BY DEPARTMENT
ORDER BY [TOTALSALARY] DESC

--Q46 Get department wise average salary from "EmployeeDetail" table order by salary ascending--
select DEPARTMENT,AVG(SALARY) 'DEPT WISE AVERAGE' FROM EMPLYDETAILS
GROUP BY DEPARTMENT
ORDER BY [DEPT WISE AVERAGE] ASC

--Q47 Get department wise maximum salary from "EmployeeDetail" table order by salary ascending--
select DEPARTMENT,MAX(SALARY) 'MAX SALARY' FROM EMPLYDETAILS
GROUP BY DEPARTMENT
ORDER BY [MAX SALARY] ASC

--Q48 Get department wise minimum salary from "EmployeeDetail" table order by salary ascending.--
select DEPARTMENT, MIN(SALARY) 'MIN SALARY' FROM EMPLYDETAILS
GROUP BY DEPARTMENT
ORDER BY [MIN SALARY] ASC

--Q49 Get department wise minimum salary from "EmployeeDetail" table order by salary ascending--
select DEPARTMENT, MIN(SALARY) 'MIN SALARY' FROM EMPLYDETAILS
GROUP BY DEPARTMENT
ORDER BY [MIN SALARY] ASC

--Q50 Join both the table that is Employee and ProjectDetail based on some common paramter--
SELECT * FROM EMPLYDETAILS
INNER JOIN PROJECTDETAILS
ON EMPLYDETAILS.EMPID=PROJECTDETAILS.EMPLYDETAIL_ID

--Q51 Get employee name, project name order by firstname from "EmployeeDetail" and "ProjectDetail" for those employee which have assigned project already.--
SELECT EMPLYDETAILS.FIRSTNAME,EMPLYDETAILS.EMPID,PROJECTDETAILS.PROJECTNAME FROM EMPLYDETAILS
LEFT JOIN PROJECTDETAILS
ON EMPLYDETAILS.EMPID=PROJECTDETAILS.PROJECTID
ORDER BY EMPLYDETAILS.FIRSTNAME

--Q52 Get employee name, project name order by firstname from "EmployeeDetail" and "ProjectDetail" for all employee even they have not assigned project.--
SELECT EMPLYDETAILS.FIRSTNAME,EMPLYDETAILS.EMPID,PROJECTDETAILS.PROJECTNAME FROM EMPLYDETAILS
FULL OUTER JOIN PROJECTDETAILS
ON EMPLYDETAILS.EMPID=PROJECTDETAILS.EMPLYDETAIL_ID
ORDER BY EMPLYDETAILS.FIRSTNAME

--Q53 Get employee name, project name order by firstname from "EmployeeDetail" and "ProjectDetail" for all employee if project is not assigned then display "-No Project Assigned"--
SELECT EMPLYDETAILS.FIRSTNAME ,PROJECTDETAILS.PROJECTNAME   FROM EMPLYDETAILS 
LEFT JOIN PROJECTDETAILS 
ON EMPLYDETAILS.EMPID=PROJECTDETAILS.EMPLYDETAIL_ID
WHERE PROJECTDETAILS.PROJECTNAME  IS NULL 
ORDER BY EMPLYDETAILS.FIRSTNAME

--Q54 Get all project name even they have not matching any employeeid, in left table, order by firstname from "EmployeeDetail" and "ProjectDetail--
SELECT PROJECTDETAILS.PROJECTNAME,EMPLYDETAILS.FIRSTNAME FROM PROJECTDETAILS
LEFT JOIN EMPLYDETAILS
ON PROJECTDETAILS.EMPLYDETAIL_ID=EMPLYDETAILS.EMPID
ORDER BY EMPLYDETAILS.FIRSTNAME

--Q55 Get complete record (employeename, project name) from both tables ([EmployeeDetail],[ProjectDetail]), if no match found in any table then show NULL--
SELECT * FROM EMPLYDETAILS
FULL JOIN PROJECTDETAILS
ON EMPLYDETAILS.EMPID=PROJECTDETAILS.EMPLYDETAIL_ID

--Q56 Get complete record (employeename, project name) from both tables ([EmployeeDetail],[ProjectDetail]), if no match found in any table then show NULL--
SELECT * FROM EMPLYDETAILS
FULL JOIN PROJECTDETAILS
ON EMPLYDETAILS.EMPID=PROJECTDETAILS.EMPLYDETAIL_ID

--Q57 Get complete record (employeename, project name) from both tables ([EmployeeDetail],[ProjectDetail]), if no match found in any table then show NULL--
SELECT * FROM EMPLYDETAILS
FULL JOIN PROJECTDETAILS
ON EMPLYDETAILS.EMPID=PROJECTDETAILS.EMPLYDETAIL_ID

--Q58 Write down the query to fetch EmployeeName & Project who has assign more than one project--
SELECT E.EMPID, E.FIRSTNAME, P.PROJECTNAME
FROM EMPLYDETAILS E , PROJECTDETAILS P 
WHERE E.EMPID=P.EMPLYDETAIL_ID
AND E.EMPID IN
(
SELECT P.EMPLYDETAIL_ID FROM PROJECTDETAILS P
GROUP BY EMPLYDETAIL_ID
HAVING COUNT(*)>1
)

--Q59 Write down the query to fetch ProjectName on which more than one employee are working along with EmployeeName--
SELECT E.EMPID, E.FIRSTNAME, P.PROJECTNAME
FROM EMPLYDETAILS E , PROJECTDETAILS P 
WHERE E.EMPID=P.EMPLYDETAIL_ID
AND E.EMPID IN
(
SELECT P.EMPLYDETAIL_ID FROM PROJECTDETAILS P
GROUP BY EMPLYDETAIL_ID
HAVING COUNT(*)>1
)

--Q60 Apply Cross Join in Both the tables--
SELECT * FROM EMPLYDETAILS
CROSS JOIN PROJECTDETAILS
















