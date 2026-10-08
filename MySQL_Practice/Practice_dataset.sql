CREATE DATABASE sql_practice;

USE sql_practice;

CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50),
    location VARCHAR(50),
    budget INT
);

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(50),
    role VARCHAR(50),
    department_id INT,
    salary INT,
    years_experience INT,
    city VARCHAR(50),
    email VARCHAR(100),
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

INSERT INTO departments (department_id, department_name, location, budget)
VALUES
(1, 'Data Analytics', 'Chennai', 800000),
(2, 'IT', 'Bangalore', 1200000),
(3, 'HR', 'Chennai', 500000),
(4, 'Finance', 'Coimbatore', 700000),
(5, 'Marketing', 'Hyderabad', 600000),
(6, 'Operations', 'Bangalore', 900000);

INSERT INTO employees
(employee_id, name, role, department_id, salary, years_experience, city, email)
VALUES
(101, 'Anu', 'Data Analyst', 1, 45000, 2, 'Chennai', 'anu@company.com'),
(102, 'Rahul', 'Data Analyst', 1, 52000, 3, 'Chennai', 'rahul@company.com'),
(103, 'Priya', 'Data Engineer', 1, 65000, 4, 'Madurai', 'priya@company.com'),
(104, 'Karthik', 'Software Developer', 2, 70000, 5, 'Bangalore', 'karthik@company.com'),
(105, 'Divya', 'Software Developer', 2, 62000, 3, 'Chennai', 'divya@company.com'),
(106, 'Arun', 'System Administrator', 2, 58000, 4, 'Bangalore', 'arun@company.com'),
(107, 'Meena', 'HR Executive', 3, 40000, 2, 'Chennai', 'meena@company.com'),
(108, 'Vijay', 'HR Manager', 3, 65000, 7, 'Chennai', 'vijay@company.com'),
(109, 'Sneha', 'Accountant', 4, 48000, 3, 'Coimbatore', 'sneha@company.com'),
(110, 'Ravi', 'Financial Analyst', 4, 60000, 5, 'Coimbatore', 'ravi@company.com'),
(111, 'Lakshmi', 'Marketing Executive', 5, 42000, 2, 'Hyderabad', 'lakshmi@company.com'),
(112, 'Suresh', 'Marketing Manager', 5, 68000, 6, 'Hyderabad', 'suresh@company.com'),
(113, 'Naveen', 'Sales Executive', NULL, 38000, 1, 'Chennai', NULL),
(114, 'Pooja', 'Data Analyst', 1, 47000, 2, 'Trichy', 'pooja@company.com'),
(115, 'Mohan', 'Software Developer', 2, 75000, 6, 'Bangalore', 'mohan@company.com');
