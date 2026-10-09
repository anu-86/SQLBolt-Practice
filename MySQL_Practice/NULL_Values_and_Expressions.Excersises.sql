-- Exercise 2
-- Topics: NULL Values and Queries With Expressions
-- 1. Find employees whose email address is NULL.
SELECT name,email
FROM employees
WHERE email IS NULL;

-- 2. Find employees whose email address is NOT NULL.
SELECT name,email
FROM employees
WHERE email IS NOT NULL;

-- 3. Find employees who are not assigned to any department.
SELECT name,department_id
FROM employees
WHERE department_id IS NULL ;

-- 4. Display the names and department IDs of employees whose department ID is NOT NULL.
SELECT name,department_id
FROM employees
WHERE department_id IS NOT NULL ;

-- 5. Count the number of employees whose email address is NULL.
SELECT COUNT(*)
FROM employees
WHERE email IS NULL;

-- 6. Display each employee's name, current salary, and annual salary.
SELECT name,salary,employee_id,
salary*12 AS Annual_salary
FROM employees;

-- 7. Display each employee's name and salary after adding a bonus of 5000.
SELECT name,salary,employee_id,
salary+5000 AS Bonus_salary
FROM employees;

-- 8. Calculate the new salary of each employee after a 10% salary increase.
SELECT name,salary,
salary+(salary*10)/100 AS Increased_salary
FROM employees;

-- 9. Find employees whose employee IDs are even numbers.
SELECT employee_id
FROM employees
WHERE employee_id % 2=0;

-- 10. Calculate the average salary of all employees.
SELECT AVG(salary)
FROM employees;

