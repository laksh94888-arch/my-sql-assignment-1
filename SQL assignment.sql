-- create employee database
create database employee;
use employee;

-- create table Departments
create table departments(
department_id INT,
department_name VARCHAR(100)
);

-- create table location
create table location(
location_id int,
location_name varchar(50)
);

-- create table  employees
create table employees(
employee_id int,
    employee_name varchar(50),
    gender enum('M','F'),
    age int,
    hire_date date,
    designation varchar(100),
    department_id int,
    location_id int,
    salary decimal(10,2)
    );
    
    -- alter table employees
    alter table employees add column email varchar(100);
    alter table employees modify column designation varchar(255);
    alter table employees drop column age;
    alter table employees rename column hire_date to date_of_joining;
     
	-- Table Renaming
    rename table departments to departments_info;
    rename table location to locations;
    
    --    Table Truncation (TRUNCATE)
    truncate table employees;
    
-- Database & Table Dropping (DROP)
drop table employees;
drop database employee;

-- Database Recreation
create database employee;
use employee;

-- create table departments
create table departments(
department_id int primary key,
department_name varchar(100) not null
);

-- create table location
create table location(
location_id int primary key auto_increment,
location_name varchar(100) not null
);

-- create table employees
create table employees(
emp_id int primary key,
emp_name varchar(100) not null,
gender enum('M','F'),
age int,
hire_date date default (current_date),
designation varchar(100),
department_id int,
location_id int,
salary decimal(10,2),
constraint check_age check (age>=18),
constraint fk_dept foreign key (department_id) references departments (department_id),
constraint fk_loc  foreign key (location_id) references location (location_id)
);
select* from employees;