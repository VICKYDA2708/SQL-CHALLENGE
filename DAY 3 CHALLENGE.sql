CREATE DATABASE University;
USE UnivErsity;

CREATE TABLE Students(
Std_ID INT PRIMARY KEY,
Std_Name VARCHAR(50),
Age INT,
Gender ENUM('M','F'),
Email VARCHAR(50),
GPA DECIMAL(3,2),
Dept_Name VARCHAR (30)
);
drop table Students;


INSERT INTO Students( Std_ID,Std_Name,Age,Gender,Email,GPA,Dept_Name)VALUES
(1,"Kavin",15,'M','kavin@gmail.com',7.5,'CS'),
(2,'Vignesh',16,'M','vignesh@gmail.com',8.5,'CS'),
(3,'Deepan',15,'M','deepan@gmail.com',8.3,'BIO'),
(4,'Ashok',16,'M',NULL,8.4,'MECH');

SELECT *FROM Students;

SELECT  DISTINCT Dept_Name FROM Students;

SELECT Std_ID,Std_Name,Email FROM Students WHERE Email IS NULL;
SELECT Std_ID,Std_Name,Email FROM Students WHERE Email IS NOT NULL;

SELECT Std_ID,Std_Name,Dept_Name FROM Students WHERE Dept_Name IN('CS','BIO');

SELECT Std_ID,Std_Name,Dept_Name,GPA FROM Students WHERE GPA BETWEEN 8.2 AND 8.5;
SELECT Std_ID,Std_Name,Dept_Name,GPA FROM Students WHERE GPA NOT BETWEEN 8.2 AND 8.5;









