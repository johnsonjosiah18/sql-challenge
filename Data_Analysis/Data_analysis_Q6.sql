SELECT e.emp_no, e.last_name, e.first_name
FROM public.employees e
JOIN public.dept_emp de ON e.emp_no = de.emp_no
JOIN public.departments d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';