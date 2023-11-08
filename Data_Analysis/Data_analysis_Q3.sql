SELECT d.dept_no, d.dept_name, dm.emp_no
FROM public.departments d
JOIN public.dept_manager dm ON d.dept_no = dm.dept_no
JOIN public.employees e ON dm.emp_no = e.emp_no;

