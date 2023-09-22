drop database employee;

create database employee;

use employee;

CREATE TABLE employees (
  id INT,
  employee_name VARCHAR(50),
  dept_id INT
);

INSERT INTO employees (id, employee_name, dept_id)
VALUES
  (1, 'john', 4),
  (2, 'sid', 1),
  (3, 'payal', 5),
  (4, 'tushar', 3),
  (5, 'manoj', null);
  
  CREATE TABLE departments (
  dept_id INT,
  dept_name VARCHAR(50)
);

INSERT INTO departments (dept_id, dept_name)
VALUES
  (1, 'sales'),
  (2, 'HR'),
  (3, 'Engineering'),
  (4, 'IT'),
  (5, 'MANAGEMENT');
  
  SELECT employees.id, employees.employee_name, departments.dept_name
FROM employees
LEFT JOIN departments
ON employees.dept_id = departments.dept_id;
