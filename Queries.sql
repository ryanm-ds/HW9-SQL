/*
QUERIES
*/
--List the following details of each employee: employee number, last name, first name, gender, and salary.
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.gender, salaries.salary  
FROM employees
JOIN salaries ON employees.emp_no = salaries.emp_no;


--List employees who were hired in 1986
select *
from employees
WHERE hire_date >= '1986-01-01' AND hire_date <= '1986-12-31'
;

--List the manager of each department with the following information: department number, 
--department name, 
--the manager's employee number, last name, first name, 
--and start and end employment dates.
select dept_manager.dept_no, departments.dept_name, dept_manager.emp_no,
employees.last_name, employees.first_name
from dept_manager
JOIN departments ON dept_manager.dept_no = departments.dept_no
JOIN employees ON dept_manager.emp_no = employees.emp_no;

--List the department of each employee with the following information: 
--employee number, last name, first name, and department name
select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from employees
JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no
;

--List all employees whose first name is "Hercules" and last names begin with "B."
select *
from employees
WHERE first_name = 'Hercules' AND
last_name like 'B%';

--List all employees in the Sales department, including their employee number, 
--last name, first name, and department name
select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from employees
JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE dept_name = 'Sales'
;

--List all employees in the Sales and Development departments, 
--including their employee number, last name, first name, and department name
select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from employees
JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE dept_name = 'Sales' OR dept_name = 'Development'
;

--In descending order, list the frequency count of employee last names, 
--i.e., how many employees share each last name.
SELECT COUNT(last_name) AS frequency_count, last_name
FROM employees
GROUP BY last_name
ORDER BY frequency_count DESC;

--Epilogue
SELECT *
FROM salaries
WHERE emp_no = 499942;