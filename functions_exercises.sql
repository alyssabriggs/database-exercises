USE employees;

SELECT CONCAT(first_name, ' ', last_name) FROM employees
WHERE first_name LIKE 'E%' OR last_name LIKE '%e';


SELECT *, datediff(now(), hire_date) FROM employees WHERE hire_date LIKE'199%'
AND birth_date LIKE '%12-25'
ORDER BY birth_date, hire_date DESC;