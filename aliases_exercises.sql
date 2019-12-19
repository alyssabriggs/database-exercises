use employees;

SELECT CONCAT(emp_no, ' - ', last_name, ', ', first_name) as full_name, birth_date as DOB from employees
WHERE emp_no < 10011
ORDER BY emp_no;

