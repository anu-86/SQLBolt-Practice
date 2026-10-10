-- Exercise 3
-- Topics: COUNT(), MIN(), MAX(), AVG(), SUM(), GROUP BY
-- 1. Count the total number of employees.
SELECT COUNT(Name)
FROM Employees;

-- 2. Find the number of employees whose salary is not NULL.
SELECT COUNT(Salary)
FROM Employees
WHERE salary IS NOT NULL;

-- 3. Find the minimum salary among all employees.
SELECT MIN(salary) AS Minimum_salary
FROM employees;

-- 4. Find the maximum salary among all employees.
SELECT MAX(salary) AS Maximum_salary
FROM employees;

-- 5. Calculate the average salary of all employees.
SELECT AVG(salary)
FROM employees;

-- 6. Calculate the total salary of all employees.
SELECT SUM(salary) AS Total_salary
FROM employees;

-- 7. Find the number of employees in each department.
SELECT Role,COUNT(*)
FROM employees
GROUP BY Role;

-- 8. Calculate the average salary for each department.
SELECT Role,AVG(salary) AS Average_salary
FROM employees
GROUP BY Role;


-- 9. Find the highest salary in each department.
SELECT Role, MAX(salary)
FROM employees
GROUP BY Role;

-- 10. Calculate the total salary paid by each department.
SELECT Role,SUM(salary) AS Total_salary
FROM employees
GROUP BY Role;



