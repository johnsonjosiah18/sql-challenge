--List the employee number, last name, first name, sex, and salary of each employee.

SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM public.employees e
JOIN public.salaries s ON e.emp_no = s.emp_no;