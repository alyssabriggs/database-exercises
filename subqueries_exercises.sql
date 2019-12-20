use employees;

SELECT * FROM employees
WHERE hire_date = (
    SELECT hire_date FROM employees
    WHERE emp_no = 101010
);


SELECT title FROM titles
WHERE emp_no IN (
    SELECT emp_no FROM employees
    WHERE first_name = 'Aamod'
);


SELECT CONCAT(first_name, ' ', last_name) FROM employees
WHERE emp_no IN (
    SELECT emp_no from dept_manager
    WHERE to_date > NOW()
    )
AND gender = 'F';


SELECT dept_name from departments
WHERE dept_no IN (
    SELECT dept_no from dept_manager
    WHERE emp_no IN (
        SELECT emp_no from employees
        WHERE gender = 'F'
        )
    AND to_date > NOW()
    );


SELECT CONCAT(first_name, ' ', last_name) from employees
WHERE emp_no IN (
    SELECT emp_no
    from salaries
    WHERE salary = (
        SELECT MAX(salary) FROM salaries
        )
)
