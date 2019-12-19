USE employees;
SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name AND last_name;

SELECT first_name
FROM employees
WHERE last_name LIKE 'E%';

SELECT emp_no, first_name, last_name
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31';

SELECT emp_no, first_name, last_name, birth_date, hire_date
FROM employees
WHERE birth_date LIKE '%-12-25'
ORDER BY birth_date ASC, hire_date DESC;

SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE '%q%';


SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name ASC, first_name;

SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name DESC, last_name ASC;

SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya') AND gender = 'M';

SELECT * FROM employees
WHERE last_name LIKE 'E%'
OR last_name LIKE '%E'
ORDER BY emp_no;