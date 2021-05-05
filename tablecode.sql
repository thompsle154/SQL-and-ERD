--drop table Employees;
--drop table Departments;
--drop table Dept_Manager;
--drop table Salaries;
--drop table Titles;

CREATE TABLE Departments (
	dept_no varchar(10) PRIMARY KEY NOT NULL,
	dept_name varchar(30)  NOT NULL
);

Select * from Departments;

CREATE TABLE Employees (
	emp_no int PRIMARY KEY  NOT NULL,
	emp_title varchar(255) NOT NULL,
	birth_date date  NOT NULL,
	first_name varchar(30)  NOT NULL,
	last_name varchar(30) NOT NULL,
	sex varchar(10)  NOT NULL,
	hire_date date  NOT NULL
	--FOREIGN KEY (emp_title) REFERENCES titles(title_id)
);

Select * from Employees;

CREATE TABLE Dept_Manager (
	dept_no varchar(10) REFERENCES Departments(dept_no),
	emp_no int REFERENCES Employees(emp_no)
);

Select * from Dept_Manager

CREATE TABLE Dept_Emp (
	emp_no int REFERENCES Employees(emp_no),
	dept_no varchar(10) REFERENCES Departments(dept_no)
);

Select * from Dept_Emp

CREATE TABLE Salaries (
	emp_no int REFERENCES Employees(emp_no),
	salary int  NOT NULL
);

Select * from Salaries

CREATE TABLE Titles (
	title_id varchar(255) NOT NULL,
	title varchar (255) NOT NULL
);

Select * from Titles