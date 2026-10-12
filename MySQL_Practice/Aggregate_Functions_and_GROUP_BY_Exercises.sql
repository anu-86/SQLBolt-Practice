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

-- 11. Find departments that have more than 3 employees.
SELECT Role,COUNT(Role) AS Employee_count
FROM employees
GROUP BY Role
HAVING COUNT(Role)>3;

-- 12. Display departments whose average salary is greater than 30000.
SELECT Role, AVG(salary) AS Average_salary
FROM employees
GROUP BY Role
HAVING AVG(salary)>30000;

-- 13. Find departments whose total salary is greater than 100000.
SELECT Role,SUM(salary) AS Total_salary
FROM Employees
GROUP BY Role
HAVING SUM(salary)>100000;

-- 14. Display departments where the highest salary is greater than 40000.
SELECT Role,MAX(salary)
FROM Employees
GROUP BY Role
HAVING MAX(salary)>40000;

-- 15. Find departments that have at least 5 employees.
SELECT Role,COUNT(Name)
FROM Employees
GROUP BY Role
HAVING COUNT(Name)>=5;

-- 16. Count the employees in each department whose salary is greater than 25000.
 -- Display only departments that have more than 2 such employees.
SELECT Role,COUNT(Name) AS Employee_Count
FROM Employees
WHERE salary>25000
GROUP BY Role
HAVING COUNT(Name)>2;

-- 17. Calculate the average salary of employees in each department.
--     Display only departments whose average salary is greater than 25000.
SELECT Role,AVG(salary)
FROM Employees
GROUP BY Role
HAVING AVG(salary)>25000;

-- 18. Find departments where the total salary of employees earning
--     more than 20000 is greater than 50000.
SELECT Role,SUM(salary)
FROM Employees
WHERE salary>20000
GROUP BY role
HAVING SUM(salary)>50000;

-- 19. Count the employees in each department whose salary is greater than 30000.
--     Display only departments that have at least 3 such employees.
SELECT Role,COUNT(Name)
FROM Employees
WHERE salary>30000
GROUP BY Role
HAVING COUNT(name)>=3;

-- 20. Find departments whose average salary is greater than 30000
--     and whose employee count is greater than 2.
SELECT Role,AVG(salary) AS Average_salary
FROM Employees
GROUP BY Role
HAVING AVG(salary)>30000 AND COUNT(Name)>2;



