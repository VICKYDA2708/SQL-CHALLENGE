CREATE DATABASE Students_DB;
use Students_DB;

CREATE TABLE Students(
Std_id INT PRIMARY KEY,
Std_Name VARCHAR(30),
Course_id INT
);

INSERT INTO Students(Std_id,Std_Name,Course_id) VALUES
(1,'VICKY',100),
(2,'JHON',101),
(3,'DEEPAK',102),
(4,'BEEM',103),
(5,'SUNDAR',104);

SELECT * FROM Students;

CREATE TABLE Courses(
Course_id INT PRIMARY KEY,
Course_Name VARCHAR (25)
);

INSERT INTO Courses(Course_id,Course_Name)VALUES
(100,'PYTHON'),
(101,'JAWA'),
(102,'C++'),
(103,'SQL'),
(104,'C'),
(105,'DA');

SELECT * FROM Courses;

-- INNER JOIN -- 

SELECT S.Std_id,S.Std_Name,C.Course_Name FROM Students S 
INNER JOIN Courses C ON S.Course_id=C.Course_id;

CREATE TABLE Current_emp(
Emp_id INT PRIMARY KEY,
Emp_Name VARCHAR(30)
);

INSERT INTO Current_emp(Emp_id,Emp_Name) VALUES 
(01,'HARI'),
(02,'VINOTH'),
(03,'VICKY'),
(04,'ELANGO');

SELECT * FROM Current_emp;

CREATE TABLE Past_emp(
Past_Emp_id INT PRIMARY KEY,
Past_Emp_Name VARCHAR(30)
);

INSERT INTO Past_emp(Past_Emp_id,Past_Emp_Name)VALUES
(02,'VINOTH'),
(03,'VICKY'),
(05,'CHINNA'),
(06,'ABI');
-- UNION AND UNION ALL --
SELECT Emp_id,Emp_Name FROM Current_emp UNION SELECT Past_Emp_id,Past_Emp_Name FROM Past_emp;

SELECT Emp_id,Emp_Name FROM Current_emp UNION ALL SELECT Past_Emp_id,Past_Emp_Name FROM Past_emp;














