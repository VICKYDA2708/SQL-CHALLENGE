CREATE DATABASE City_Hospital;
USE City_Hospital;

CREATE TABLE Patients(
Patient_ID INT PRIMARY KEY,
Patient_Name VARCHAR(50),
Age INT,
Gender ENUM('M','F'),
Admission_Date DATE
);

ALTER TABLE Patients ADD COLUMN Doctor_Assigned VARCHAR(50);
SELECT *FROM Patients;
ALTER TABLE Patients MODIFY COLUMN Patient_Name VARCHAR(100);

ALTER TABLE Patients RENAME TO Patients_Info;

TRUNCATE TABLE Patients_Info;
DROP TABLE Patients_info;



