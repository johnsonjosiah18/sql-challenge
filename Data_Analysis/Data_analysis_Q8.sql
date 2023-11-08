SELECT last_name, COUNT(*) as frequency
FROM public.employees
GROUP BY last_name
ORDER BY frequency DESC;