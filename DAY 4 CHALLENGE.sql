CREATE DATABASE ECommerceDB;

USE ECommerceDB;

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Price DECIMAL(10,2)
);

INSERT INTO Products (ProductID, ProductName, Price) VALUES
(1, 'Mobile', 25000.00),
(2, 'Laptop', 78000.00),
(3, 'Headphones', 3500.00),
(4, 'Smart Watch', 12000.00),
(5, 'Tablet', 30000.00);

SELECT *FROM Products ORDER BY Price DESC LIMIT 3;


CREATE TABLE Sales (
    SaleID INT PRIMARY KEY,
    ProductID INT,
    Quantity INT,
    SaleAmount DECIMAL(10,2),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

INSERT INTO Sales (SaleID, ProductID, Quantity, SaleAmount) VALUES
(1, 1, 2, 50000.00),
(2, 2, 1, 78000.00),
(3, 3, 4, 14000.00),
(4, 4, 3, 36000.00),
(5, 5, 1, 30000.00);

SELECT 
    COUNT(*) AS TotalSales,
    SUM(SaleAmount) AS TotalRevenue,
    AVG(SaleAmount) AS AvgSaleValue,
    MAX(SaleAmount) AS HighestSale,
    MIN(SaleAmount) AS LowestSale
FROM Sales;

CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(100),
    Department VARCHAR(50),
    Salary DECIMAL(10,2)
);

INSERT INTO Employees (EmpID, EmpName, Department, Salary) VALUES
(1, 'Arun', 'HR', 40000.00),
(2, 'Priya', 'IT', 65000.00),
(3, 'Kumar', 'IT', 55000.00),
(4, 'Meena', 'Finance', 48000.00),
(5, 'Rahul', 'IT', 62000.00),
(6, 'Anu', 'Finance', 51000.00),
(7, 'Sathish', 'IT', 60000.00),
(8, 'Vikram', 'HR', 42000.00),
(9, 'Divya', 'Finance', 49000.00),
(10, 'Siva', 'IT', 58000.00),
(11, 'Ramya', 'IT', 61000.00);

SELECT Department,COUNT(*) AS TotalEmployees
FROM Employees
GROUP BY Department
HAVING COUNT(*) > 10;