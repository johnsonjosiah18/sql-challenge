SELECT first_name, last_name, hire_date
FROM public.employees
WHERE EXTRACT(YEAR FROM hire_date::date) = 1986;