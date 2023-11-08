SELECT de.dept_no, de.emp_no, e.last_name, e.first_name, d.dept_name
FROM public.dept_emp de
JOIN public.employees e ON de.emp_no = e.emp_no
JOIN public.departments d ON de.dept_no = d.dept_no;