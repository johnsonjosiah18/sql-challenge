
-- Table: public.dept_manager
CREATE TABLE IF NOT EXISTS public.departments
(dept_no  VARCHAR(30) PRIMARY KEY, 
 dept_name VARCHAR(30) NOT NULL
);

SELECT * FROM public.departments

-- Table: public.employees
CREATE TABLE IF NOT EXISTS public.employees
(emp_no VARCHAR(30) PRIMARY KEY,
 emp_title VARCHAR(30),
 birth_date DATE NOT NULL,
 first_name VARCHAR(30) NOT NULL,
 last_name VARCHAR(30) NOT NULL,
 sex CHAR(1) CHECK (sex IN ('M', 'F')),
 hire_date DATE NOT NULL
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.employees
    OWNER to postgres;

SELECT * FROM public.employees

-- Table: public.dept_emp
CREATE TABLE IF NOT EXISTS public.dept_emp
(emp_no VARCHAR(30),
 dept_no VARCHAR(30),
 PRIMARY KEY (emp_no, dept_no),
 FOREIGN KEY (emp_no) REFERENCES public.employees (emp_no),
 FOREIGN KEY (dept_no) REFERENCES public.departments (dept_no)
);

SELECT * FROM public.dept_emp

-- Table: public.dept_manager
CREATE TABLE IF NOT EXISTS public.dept_manager
(dept_no VARCHAR(30),
 emp_no VARCHAR(30),
 PRIMARY KEY (dept_no, emp_no),
 FOREIGN KEY (emp_no) REFERENCES public.employees (emp_no),
 FOREIGN KEY (dept_no) REFERENCES public.departments (dept_no)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.dept_manager
    OWNER to postgres;	

SELECT * FROM public.dept_manager



-- Table: public.salaries
CREATE TABLE IF NOT EXISTS public.salaries
(emp_no VARCHAR(30),
 salary INTEGER CHECK (salary > 0),
 PRIMARY KEY (emp_no),
 FOREIGN KEY (emp_no) REFERENCES public.employees (emp_no)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.salaries
    OWNER to postgres;
	
SELECT * FROM public.salaries

-- Table: public.titles
CREATE TABLE IF NOT EXISTS public.titles
(title_id VARCHAR(30),
 title VARCHAR(30),
 PRIMARY KEY (title_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.titles
    OWNER to postgres;
	
SELECT * FROM public.titles
