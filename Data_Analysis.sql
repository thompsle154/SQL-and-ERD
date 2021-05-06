--1. List the following details of each employee, employee number, last name, first name, sex, and salary

SELECT empl.emp_no, empl.last_name, empl.first_name,
empl.sex, Salaries.salary
FROM Employees empl
INNER JOIN Salaries on 
empl.emp_no = Salaries.emp_no;

--2. List first name, last name, and hire date for employees who were hired in 1986
SELECT emp_no, first_name, last_name, hire_date
FROM Employees
WHERE hire_date >= '1986-01-01'
AND hire_date <='1986-12-31'

--3. List the manager of each department with the following information: department number, 
	--department name, the manager's employee number, last name, first name
	
SELECT dept_manager.dept_no,
	departments.dept_name,
	dept_manager.emp_no,
	empl.last_name,
	empl.first_name
FROM dept_manager
INNER JOIN departments ON 
dept_manager.dept_no = departments.dept_no
INNER JOIN Employees empl ON
dept_manager.emp_no = empl.emp_no

--4. List the department of each employee with the following information: 
	--employee number, last name, first name, and department name
	
SELECT empl.emp_no, 
	empl.last_name,
	empl.first_name, 
	departments.dept_name
FROM Employees empl
INNER JOIN dept_manager ON
empl.emp_no = dept_manager.emp_no
INNER JOIN Departments ON
dept_manager.dept_no = departments.dept_no

--5. List the first name, last name, and sex for employees whose first name is "Hercules" 
	--and last names begin with 'B'.

SELECT 
empl.first_name,
empl.last_name,
empl.sex
FROM Employees empl
WHERE empl.first_name = 'Hercules'
AND empl.last_name like 'B%'



