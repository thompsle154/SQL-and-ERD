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

--6. List all employees in the Sales and Development departments, including their employee number,
	--last name, first name, and department name.

SELECT
empl.emp_no,
empl.last_name,
empl.first_name,
departments.dept_name
FROM Employees empl
JOIN dept_emp ON 
empl.emp_no = dept_emp.emp_no
INNER JOIN departments ON
dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales';

--7. List all employees in the Sales and Development departments, including their 
	--employee number, last name, first name, and department name
	
SELECT empl.emp_no, empl.last_name, empl.first_name, dept.dept_name
FROM Employees empl
JOIN dept_emp ON
empl.emp_no = dept_emp.emp_no
INNER JOIN departments dept ON
dept_emp.dept_no = dept.dept_no
WHERE dept.dept_name = 'Sales' OR
	dept.dept_name = 'Development';

--8. In descending order, list the frequency count of employee last names i.e. how many employees share each last name

Select empl.last_name, count(empl.last_name)
FROM Employees empl
GROUP BY (empl.last_name)
ORDER BY count(empl.last_name) desc

