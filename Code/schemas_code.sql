DROP TABLE IF EXISTS department;
DROP TABLE IF EXISTS department_employees;
DROP TABLE IF EXISTS department_manager;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;

CREATE TABLE department(
	department_number VARCHAR NOT NULL,
	department_name VARCHAR NOT NULL,
	CONSTRAINT pk_department PRIMARY KEY (
		department_number
	)
);

CREATE TABLE department_employees(
	employee_number INTEGER NOT NULL,
    department_number VARCHAR NOT NULL,
    CONSTRAINT pk_department_employees PRIMARY KEY (
		employee_number,department_number
     )
);


CREATE TABLE department_manager(
	department_number VARCHAR NOT NULL,
	employee_number INTEGER   NOT NULL,
    CONSTRAINT pk_department_manager PRIMARY KEY (
        employee_number
     )
);

CREATE TABLE titles (
	title_id VARCHAR(20) NOT NULL,
	title_name VARCHAR(30) NOT NULL,
	CONSTRAINT pk_titles PRIMARY KEY (
        title_id
		)
);

CREATE TABLE employees (
	employee_number INTEGER NOT NULL,
	employee_title_id VARCHAR(30) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	sex VARCHAR(10) NOT NULL,
	hire_date DATE NOT NULL,
	FOREIGN KEY (employee_title_id) REFERENCES titles(title_id),
	CONSTRAINT pk_employees PRIMARY KEY (
        employee_number
		)
);


CREATE TABLE salaries (
	employee_number INTEGER NOT NULL,
	salary INTEGER NOT NULL,
	CONSTRAINT pk_salaries PRIMARY KEY (
        employee_number
	)
);

ALTER TABLE department_manager ADD CONSTRAINT fk_department_manager_department_number FOREIGN KEY(department_number)
REFERENCES department (department_number);

ALTER TABLE employees ADD CONSTRAINT fk_employees_employee_title_id FOREIGN KEY(employee_title_id)
REFERENCES titles (title_id);