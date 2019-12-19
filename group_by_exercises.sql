use employees;

SELECT DISTINCT title
FROM titles;

# rewrite using GROUP BY
select title from titles GROUP BY title;

SELECT last_name FROM employees
WHERE last_name LIKE 'e%e'
GROUP BY last_name;


SELECT first_name, last_name FROM employees
WHERE last_name LIKE 'e%e'
GROUP BY last_name, first_name;


SELECT last_name FROM employees
WHERE last_name LIKE '%q%'
and last_name not like '%qu%'
GROUP BY last_name;


SELECT last_name, count(*) FROM employees
WHERE last_name LIKE '%q%'
and last_name not like '%qu%'
GROUP BY last_name
order by count(*) DESC;


SELECT count(*), gender FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender;