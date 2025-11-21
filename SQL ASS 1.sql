create database employee;
use employee;
create table departments(
department_id int primary key,
department_name varchar(100) unique not null
);
create table locations(
location_id  int auto_increment primary key,
location_name varchar(100) not null
);
drop table locations;
create table employees(
employee_id int,
employee_name varchar(50) not null,
gender enum("M","F"),
age int check(age>=18),
hire_date date default (curdate()),
designation varchar(100),
department_id int,
location_id int,
foreign key(department_id) references department_info(department_id),
foreign key(location_id) references locations(location_id)
);
alter table employees
ADD column email varchar(20);
alter table employees
ADD column designation varchar(30);
select*from employees;
alter table employees
drop column age;
alter table employees
rename column hire_date to date_of_joining;
alter table departments
rename to department_info;
alter table location
rename to locations;
truncate table employees;
drop table employees;
select *from department_info;
select *from locations;
select *from employees;