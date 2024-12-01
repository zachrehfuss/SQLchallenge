-- Drop any tables that exist with the names
DROP TABLE IF EXISTS department;
DROP TABLE IF EXISTS department_employees;
DROP TABLE IF EXISTS department_manager;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;

-- Create table for departments
CREATE TABLE department(
	department_number VARCHAR NOT NULL,
	department_name VARCHAR NOT NULL,
	CONSTRAINT pk_department PRIMARY KEY (
		department_number
	)
);

-- Create table for department employees
CREATE TABLE department_employees(
	employee_number INTEGER NOT NULL,
    department_number VARCHAR NOT NULL,
    CONSTRAINT pk_department_employees PRIMARY KEY (
		employee_number,department_number
     )
);

-- Create table for department managers
CREATE TABLE department_manager(
	department_number VARCHAR NOT NULL,
	employee_number INTEGER   NOT NULL,
    CONSTRAINT pk_department_manager PRIMARY KEY (
        employee_number
     )
);

-- Create table for job titles
CREATE TABLE titles (
	title_id VARCHAR(20) NOT NULL,
	title_name VARCHAR(30) NOT NULL,
	CONSTRAINT pk_titles PRIMARY KEY (
        title_id
		)
);

-- Create table for employees
CREATE TABLE employees (
	employee_number INTEGER NOT NULL,
	employee_title_id VARCHAR(30) NOT NULL,
	birth_date VARCHAR(30) NOT NULL,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	sex VARCHAR(10) NOT NULL,
	hire_date VARCHAR(30) NOT NULL,
	FOREIGN KEY (employee_title_id) REFERENCES titles(title_id),
	CONSTRAINT pk_employees PRIMARY KEY (
        employee_number
		)
);

-- Create table for salaries
CREATE TABLE salaries (
	employee_number INTEGER NOT NULL,
	salary INTEGER NOT NULL,
	CONSTRAINT pk_salaries PRIMARY KEY (
        employee_number
	)
);

-- Altering Tables to add foreign keys (don't run until CSVs are uploaded)
ALTER TABLE department_manager ADD CONSTRAINT fk_department_manager_department_number FOREIGN KEY(department_number)
REFERENCES department (department_number);

ALTER TABLE employees ADD CONSTRAINT fk_employees_employee_title_id FOREIGN KEY(employee_title_id)
REFERENCES titles (title_id);