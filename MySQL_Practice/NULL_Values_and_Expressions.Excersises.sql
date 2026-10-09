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
