USE sql_practice
-- Exercise 1
-- 1.Find the name and role of all employees.
SELECT name, role
FROM employees;

-- 2. Find the name, city, and salary of all employees.
SELECT name,city,salary
FROM employees;

-- 3. Find all details of employees who are Data Analysts.
SELECT *
FROM employees
WHERE role='Data Analyst';

-- 4. Find employees who live in Chennai.
SELECT name,city
FROM employees
WHERE city='Chennai';

-- 5. Find employees whose salary is greater than 60,000.
SELECT name,salary
FROM employees
WHERE salary>60000;

-- 6. Find employees who have more than 3 years of experience and earn more than 50,000.
SELECT name,salary,years_experience
FROM employees
WHERE years_experience>3
AND salary>50000;

-- 7. Find employees who work as either a Data Analyst or a Software Developer.
SELECT name,role
FROM employees
WHERE role = 'Data Analyst'
OR role='Software Developer';

-- 8. Find employees whose salary is between 40,000 and 60,000.
SELECT name,salary
FROM employees
WHERE salary BETWEEN 40000 AND 60000;

-- 9. Find employees who work in department 1, 2, or 3.
SELECT name,employee_id
FROM employees
WHERE department_id IN (1,2,3);

-- 10. Find employees whose name starts with the letter 'A'.
SELECT name
FROM employees
WHERE name LIKE "A%";

-- 11. Find employees whose email ends with 'company.com'.
SELECT name,email
FROM employees
WHERE email LIKE '%company.com';

-- 12. List all employees ordered by salary from highest to lowest.
SELECT name,salary
FROM employees
ORDER BY salary DESC;

-- 13. Find the top 3 highest-paid employees.
SELECT name,salary
FROM employees
ORDER BY salary DESC
LIMIT 3;

-- 14. List employees ordered by years of experience from lowest to highest.
SELECT name,years_experience
FROM employees
ORDER BY years_experience ASC;

-- 15. Find the distinct cities where employees live.
SELECT DISTINCT city
FROM employees;

-- 16. Find the distinct employee roles.
SELECT DISTINCT role
FROM employees;

-- 17. Find each employee's name and department name.
SELECT name,department_name
FROM employees
INNER JOIN departments
ON employees.department_id=departments.department_id;

-- 18. Find the employee name, department name, and location for all employees.
SELECT name,department_name,location
FROM employees
INNER JOIN departments
ON employees.department_id=departments.department_id;

-- 19. List all departments and the names of their employees, including departments that have no employees.
SELECT department_name,name
FROM departments
LEFT JOIN employees
ON departments.department_id=employees.department_id;

-- 20. List all departments and their locations, including departments that have no employees.
SELECT department_name,location,name
FROM departments
LEFT JOIN employees
ON departments.department_id=employees.department_id;




