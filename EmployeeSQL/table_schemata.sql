-- delete folders
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS titles;

--- Create tables and import data --- 



--- titles ---

-- Drop table if exists
DROP TABLE IF EXISTS titles;

-- Create new table: 
CREATE TABLE titles (
	title_id VARCHAR NOT NULL PRIMARY KEY,
	title VARCHAR NOT NULL
); 

-- Verify successful data import: 
SELECT * FROM titles;



--- employees ---

-- Drop table if exists
DROP TABLE IF EXISTS employees;

-- Create new table: 
CREATE TABLE employees (
	emp_no INT NOT NULL PRIMARY KEY,
	emp_title VARCHAR NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	sex VARCHAR NOT NULL,
	hire_date DATE NOT NULL,
	FOREIGN KEY (emp_title) REFERENCES titles(title_id)
); 

-- Verify successful data import: 
SELECT * FROM employees;



--- departments ---

-- Drop table if exists


-- Create new table: 
CREATE TABLE departments (
	dept_no VARCHAR PRIMARY KEY NOT NULL,
	dept_name VARCHAR NOT NULL
);

-- Verify successful data import: 
SELECT * FROM departments;
 



--- dept_emp ---

-- Drop table if exists

DROP TABLE IF EXISTS dept_emp;

-- Create new table: 
CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	PRIMARY KEY (dept_no, emp_no)
);

-- Verify successful data import: 
SELECT * FROM dept_emp;





--- dept_manager ---

-- Drop table if exists
DROP TABLE IF EXISTS dept_manager;

-- Create new table: 
CREATE TABLE dept_manager (
	dept_no VARCHAR NOT NULL,
	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	PRIMARY KEY (dept_no, emp_no)
); 

-- Verify successful data import: 
SELECT * FROM dept_manager;




--- salaries ---

-- Drop table if exists


-- Create new table: 
CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	PRIMARY KEY (emp_no)
); 

-- Verify successful data import: 
SELECT * FROM salaries;











