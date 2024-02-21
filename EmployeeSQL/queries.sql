
------queries ----- 
---List the employee number, last name, first name, sex, and salary of each employee.

SELECT emp_no, last_name, sex
FROM employees;
	
SELECT emp_no, salary
FROM salaries;

SELECT e.emp_no,e.last_name,e.first_name,e.sex,s.salary
from employees e
join salaries s
on (e.emp_no=s.emp_no)
;





--List the first name, last name, and hire date for the employees who were hired in 1986
SELECT first_name, last_name, hire_date
FROM employees
WHERE EXTRACT (YEAR FROM hire_date) =1986;



---List the manager of each department
---along with their department number, department name, employee number, last name, and first name.

SELECT e.emp_no,e.last_name,e.first_name,dm.dept_no,depts.dept_name
from employees e
	join dept_manager dm
	on (e.emp_no=dm.emp_no)
		join departments depts
		on (dm.dept_no=depts.dept_no)
;


--List the department number for each employee 
--along with that employee’s employee number, last name, first name, and department name.
SELECT e.emp_no,e.last_name,e.first_name,de.dept_no,depts.dept_name
from employees e
	join dept_emp de
	on (e.emp_no=de.emp_no)
		join departments depts
		on (de.dept_no=depts.dept_no)
;


--List first name, last name, and sex of each employee 
--whose first name is Hercules and whose last name begins with the letter B.

SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'
;


--List each employee in the Sales department, 
--including their employee number, last name, and first name.
SELECT e.emp_no,e.last_name,e.first_name,de.dept_no,depts.dept_name
from employees e
	join dept_emp de
	on (e.emp_no=de.emp_no)
		join departments depts
		on (de.dept_no=depts.dept_no)
		where dept_name='Sales'
;


--List each employee in the Sales and Development departments, 
--including their employee number, last name, first name, and department name.
SELECT e.emp_no,e.last_name,e.first_name,de.dept_no,depts.dept_name
from employees e
	join dept_emp de
	on (e.emp_no=de.emp_no)
		join departments depts
		on (de.dept_no=depts.dept_no)
		where dept_name='Sales' or dept_name='Development'
;


--List the frequency counts, in descending order, 
--of all the employee last names (that is, how many employees share each last name).

select last_name, count(last_name) as "Number of employees with this last name" 
from employees
group by last_name
order by "Number of employees with this last name" DESC
;





 