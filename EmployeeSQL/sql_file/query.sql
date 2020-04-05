--1.List the following details of each employee: employee number, last name, first name, gender, and salary.
SELECT emp.emp_no,emp.last_name, emp.first_name, emp.gender, s.salary
FROM employees AS emp
JOIN salaries AS s
ON emp.emp_no = s.emp_no



--2.List employees who were hired in 1986.
SELECT * FROM employees 
WHERE hire_date between '1986-01-01' AND '1986-12-31'
-

--3.List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
SELECT dm.dept_no,dept.dept_name, dm.emp_no, emp.last_name,emp.first_name,dm.from_date AS start_date, dm.to_date AS end_date
FROM dept_manager AS dm
JOIN departments AS dept 
ON dm.dept_no = dept.dept_no
JOIN employees AS emp
ON dm.emp_no = emp.emp_no

--4.List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT dm.emp_no, emp.last_name,emp.first_name,dept.dept_name
FROM dept_manager AS dm
JOIN departments AS dept 
ON dm.dept_no = dept.dept_no
JOIN employees AS emp
ON dm.emp_no = emp.emp_no

--5.List all employees whose first name is "Hercules" and last names begin with "B."
SELECT emp.first_name, emp.last_name
FROM employees AS emp
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%'

--6.List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT emp.emp_no, emp.last_name, emp.first_name,dept.dept_name
FROM employees AS emp
JOIN dept_emp
ON emp.emp_no = dept_emp.emp_no
	JOIN departments AS dept
	ON dept_emp.dept_no = dept.dept_no 
	WHERE dept.dept_name = 'Sales'

--7.List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT emp.emp_no, emp.last_name, emp.first_name,dept.dept_name
FROM employees AS emp
JOIN dept_emp
ON emp.emp_no = dept_emp.emp_no
	JOIN departments AS dept
	ON dept_emp.dept_no = dept.dept_no 
	WHERE dept.dept_name = 'Sales'or dept.dept_name ='Development'



--8.In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, count(last_name) as Frequncy
FROM employees
GROUP BY last_name
ORDER BY count(last_name) DESC



