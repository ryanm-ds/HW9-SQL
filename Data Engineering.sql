CREATE TABLE employees(
emp_no INT,
PRIMARY KEY (emp_no),
birth_date DATE,
first_name VARCHAR(255),
last_name VARCHAR(255),
gender VARCHAR(255),
hire_date DATE
);

CREATE TABLE departments(
dept_no VARCHAR (255),
dept_name VARCHAR(255),
PRIMARY KEY (dept_no)
)

CREATE TABLE dept_emp(
emp_no INT,
dept_no VARCHAR(255),
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
from_date DATE,
to_date DATE
);

CREATE TABLE dept_manager(
dept_no VARCHAR(255),
emp_no INT,
FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
from_date DATE,
to_date DATE
);

CREATE TABLE salaries(
emp_no INT,
salary INT,
from_date DATE,
to_date DATE,	
FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE titles(
emp_no INT,
title VARCHAR(255),
from_date DATE,
to_date DATE,		
FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM departments
LIMIT 10;

SELECT * FROM dept_emp
LIMIT 10;

SELECT * FROM dept_manager
LIMIT 10;

SELECT * FROM employees
LIMIT 10;

SELECT * FROM salaries
LIMIT 10;

SELECT * FROM titles
LIMIT 10;