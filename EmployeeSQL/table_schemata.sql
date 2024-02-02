-- delete folders
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS employees;


--- Create tables and import data --- 




--- departments ---

-- Drop table if exists


-- Create new table: 
CREATE TABLE departments (
	dept_no VARCHAR PRIMARY KEY NOT NULL,
	dept_name VARCHAR
);

-- Verify successful data import: 
SELECT * FROM departments;




--- dept_emp ---

-- Drop table if exists

DROP TABLE IF EXISTS dept_emp;

-- Create new table: 
CREATE TABLE dept_emp (
	emp_no INT, --PRIMARY KEY NOT NULL,
	dept_no VARCHAR--,
	--FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

-- Verify successful data import: 
SELECT * FROM dept_emp;




--- dept_manager ---

-- Drop table if exists
DROP TABLE IF EXISTS dept_manager;

-- Create new table: 
CREATE TABLE dept_manager (
	dept_no VARCHAR,
	emp_no INT--,
	--FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	--FOREIGN KEY (emp_no) REFERENCES dept_emp(emp_no)
); -- composite key?

-- Verify successful data import: 
SELECT * FROM dept_manager;




--- salaries ---

-- Drop table if exists


-- Create new table: 
CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary INT--,
	--FOREIGN KEY (emp_no) REFERENCES dept_emp(emp_no)
); 

-- Verify successful data import: 
SELECT * FROM salaries;




--- titles ---

-- Drop table if exists
DROP TABLE IF EXISTS titles;

-- Create new table: 
CREATE TABLE titles (
	title_id VARCHAR,-- PRIMARY KEY,
	title VARCHAR
); 

-- Verify successful data import: 
SELECT * FROM titles;




--- employees ---

-- Drop table if exists
DROP TABLE IF EXISTS employees;

-- Create new table: 
CREATE TABLE employees (
	emp_no INT,
	emp_title VARCHAR,
	birth_date DATE,
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR,
	hire_date varchar--,--DATE
	--FOREIGN KEY (emp_no) REFERENCES dept_emp(emp_no),
	--FOREIGN KEY (emp_title) REFERENCES titles(title_id)
); 

-- Verify successful data import: 
SELECT * FROM employees;


