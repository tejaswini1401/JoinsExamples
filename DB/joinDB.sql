CREATE DATABASE joinsDB;
USE joinsDB;

CREATE TABLE departments(
department_id INT PRIMARY KEY,
department_name VARCHAR(50)
);

CREATE TABLE employee(
employee_id INT PRIMARY KEY,
employee_name VARCHAR(50),
department_id INT,
FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

INSERT INTO departments(department_id, department_name) VALUES
(1, "HR"),
(2, "Engineering"),
(3, "Marketing");

INSERT INTO employee(employee_id, employee_name, department_id) VALUES
(1, "Tejaswini", 2),
(2, "Samrudhhi", 3),
(3, "Divya", 1),
(4, "Manish", 2);

-- INNER JOIN
SELECT 
	e.employee_id,
	e.employee_name,
	e.department_id
FROM 
	employee e
INNER JOIN
	departments d
ON 
	e.department_id = d.department_id;

INSERT INTO departments(department_id, department_name) VALUES
(4, "Sales");

INSERT INTO employee(employee_id, employee_name) VALUES
(5,"Madhura");

-- LEFT OUTER JOIN OR LEFT JOIN 
SELECT 
    e.employee_id,
    e.employee_name,
    d.department_name
FROM 
    employee e
LEFT OUTER JOIN 
    departments d
ON 
    e.department_id = d.department_id;
 
 -- RIGHT OUTER JOIN OR RIGHT JOIN 
SELECT 
    e.employee_id,
    e.employee_name,
    d.department_name
FROM 
    employee e
RIGHT OUTER JOIN 
    departments d
ON 
    e.department_id = d.department_id;
    
-- FULL OUTER JOIN 
SELECT 
    e.employee_id,
    e.employee_name,
    d.department_name
FROM 
    employee e
LEFT JOIN 
    departments d
ON 
    e.department_id = d.department_id

UNION

SELECT 
    e.employee_id,
    e.employee_name,
    d.department_name
FROM 
    employee e
RIGHT JOIN 
    departments d
ON 
    e.department_id = d.department_id;
    

