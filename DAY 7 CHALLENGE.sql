CREATE DATABASE Company_DB;
USE Company_DB;

CREATE TABLE Employees (
EmpID INT PRIMARY KEY,
EmpName VARCHAR(50),
DepartmentID INT,
HireDate DATE
);

CREATE TABLE Departments (
DepartmentID INT PRIMARY KEY,
DepartmentName VARCHAR(50)
);

CREATE TABLE Salaries (
SalaryID INT PRIMARY KEY,
EmpID INT,
SalaryAmount DECIMAL(10,2),
PayDate DATE,
FOREIGN KEY (EmpID) REFERENCES Employees(EmpID)
);

INSERT INTO Employees (EmpID, EmpName, DepartmentID, HireDate) VALUES
(101, "Niths Kumar", 1, "2021-04-19"),
(102, "Vinoth Kumar", 2, "2017-02-21"),
(103, "Ajay Kumar", 3, "2022-03-04"),
(104, "Arun Kumar", 4, "2012-01-13");

SELECT * FROM Employees;

INSERT INTO Departments (DepartmentID, DepartmentName) VALUES
(1, "HR"),
(2, "Finance"),
(3, "Marketing"),
(4, "IT");

SELECT  * FROM Departments;

INSERT INTO Salaries (SalaryID, EmpID, SalaryAmount, PayDate) VALUES
(1, 101, 50000, "2021-05-10"),
(2, 102, 60000, "2021-07-14"),
(3, 103, 45000, "2021-08-01"),
(4, 104, 70000, "2021-09-05");

SELECT *FROM Salaries;

-- Stored Procedure--
DELIMITER $$

CREATE PROCEDURE GetEmpByID(IN emp_id INT)
BEGIN
   SELECT *
   FROM Employees
   WHERE EmpID = emp_id;
END $$

DELIMITER $$;

CALL GetEmpByID(103);

-- CREATE VIEW--
CREATE VIEW EmployeeDepView AS
SELECT
e.EmpName,
d.DepartmentName
FROM Employees e
JOIN Departments d
ON e.DepartmentID = d.DepartmentID;

-- Complax View--
CREATE VIEW EmployeeAllDetails AS
SELECT
e.EmpID,
e.EmpName,
d.DepartmentName,
s.SalaryAmount,
s.PayDate
FROM Employees e
JOIN Departments d 
ON e.DepartmentID = d.DepartmentID
JOIN Salaries s
ON e.EmpID = s.EmployeeID;

SELECT * FROM EmployeeDepView;
SELECT * FROM EmployeeFullInfo;
ON e.DepartmentID = d.DepartmentID
JOIN Salaries s
ON e.EmpID = s.EmpID;
