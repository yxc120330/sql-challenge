CREATE TABLE departments(
	dept_no VARCHAR(30) NOT NULL,
	dept_name VARCHAR(30) NOT NULL
);

CREATE TABLE dept_emp(
	emp_no INT NOT NULL,
	dept_no VARCHAR(30) NOT NULL,
	from_date DATE,
	to_date DATE
);

CREATE TABLE dept_manager(
	dept_no VARCHAR(30) NOT NULL,
	emp_no INT,
	from_date DATE,
	to_date DATE
);

CREATE TABLE employees(
	emp_no INT,
	birth_data DATE,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	gender VARCHAR(30) NOT NULL,
	hire_date DATE
);

CREATE TABLE salaries(
	emp_no INT,
	salary INT,
	from_date DATE,
	to_date DATE
);


CREATE TABLE titles(
	emp_no INT,
	title VARCHAR(30) NOT NULL,
	from_date DATE,
	to_date DATE
);




