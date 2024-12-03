-- Query 1: List the employee number, last name, first name,
-- sex, and salary of each employee
SELECT employees.employee_number, last_name, first_name, sex, salaries.salary
FROM employees
LEFT JOIN salaries
ON employees.employee_number = salaries.employee_number;

-- Query 2: List the first name, last name, and hire date
-- for the employees who were hired in 1986
SELECT first_name, last_name, hire_date
FROM employees
WHERE (hire_date) >= '1986-01-01' AND hire_date < '1987-01-01';

-- Query 3: List the manager of each department along with their department number,
-- department name, employee number, last name, and first name
SELECT department.department_name, department_employees.department_number,
	employees.employee_number, last_name, first_name, employee_title_id
FROM employees
LEFT JOIN department_employees
ON employees.employee_number = department_employees.employee_number
LEFT JOIN department 
ON department_employees.department_number = department.department_number
WHERE employee_title_id = 'm0001';

-- Query 4: List the department number for each employee along with that employee’s employee number,
-- last name, first name, and department name
SELECT employees.employee_number, last_name, first_name, 
	department_employees.department_number, department.department_name
FROM employees
LEFT JOIN department_employees
ON employees.employee_number = department_employees.employee_number
LEFT JOIN department 
ON department_employees.department_number = department.department_number;

-- Query 5: List first name, last name, and sex of each employee whose first name is
-- Hercules and whose last name begins with the letter B
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

--Query 6: List each employee in the Sales department,
-- including their employee number, last name, and first name
SELECT department.department_name, employees.employee_number, last_name,
	first_name, department_employees.department_number
FROM employees
LEFT JOIN department_employees
ON employees.employee_number = department_employees.employee_number
LEFT JOIN department 
ON department_employees.department_number = department.department_number
WHERE department.department_number = 'd007';

--Query 7 List each employee in the Sales and Development departments, 
-- including their employee number, last name, first name, and department name 
SELECT department.department_name, employees.employee_number, last_name,
	first_name
FROM employees
LEFT JOIN department_employees
ON employees.employee_number = department_employees.employee_number
LEFT JOIN department 
ON department_employees.department_number = department.department_number
WHERE department.department_number = 'd007'
OR department.department_number = 'd005';

-- Query 8: List the frequency counts, in descending order, of all the 
-- employee last names (that is, how many employees share each last name)
SELECT last_name, COUNT(last_name) AS "Last name count"
FROM employees
GROUP BY last_name
ORDER BY "Last name count" DESC;
