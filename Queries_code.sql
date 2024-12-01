-- Query 1: Find employee number, last name, first name, sex, and salary
SELECT employees.employee_number, last_name, first_name, sex, salaries.salary
FROM employees
LEFT JOIN salaries
ON employees.employee_number = salaries.employee_number;

SELECT * FROM employees

-- Query 2: list first name, last name and hire data in 1986
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date >= '01-01-1986' AND hire_date < '01-01-1986';

-- Query 3: List manager of each department, department number, 
-- department name, last name, first name.
SELECT department.department_name, department_employees.department_number,
	employees.employee_number, last_name, first_name, employee_title_id
FROM employees
LEFT JOIN department_employees
ON employees.employee_number = department_employees.employee_number
LEFT JOIN department 
ON department_employees.department_number = department.department_number
WHERE employee_title_id = 'm0001';

-- Query 4: List department number for each employee, department name,
-- employee number, last name, and first name
SELECT employees.employee_number, last_name, first_name, 
	department_employees.department_number, department.department_name
FROM employees
LEFT JOIN department_employees
ON employees.employee_number = department_employees.employee_number
LEFT JOIN department 
ON department_employees.department_number = department.department_number;


