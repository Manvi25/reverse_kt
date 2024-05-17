use sql_practice

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    department VARCHAR(50),
    salary DECIMAL(10, 2)
);

INSERT INTO employees (employee_id, department, salary) VALUES
(1, 'HR', 60000.00),
(2, 'HR', 75000.00),
(3, 'HR', 75000.00),
(4, 'IT', 90000.00),
(5, 'IT', 95000.00),
(6, 'IT', 95000.00),
(7, 'Finance', 85000.00),
(8, 'Finance', 80000.00),
(9, 'Finance', 85000.00);

--row_number
SELECT
    employee_id,
    department,
    salary,
    ROW_NUMBER() OVER (ORDER BY salary DESC) AS row_num
FROM
    employees;

--rank
SELECT
    employee_id,
    department,
    salary,
    RANK() OVER (ORDER BY salary DESC) AS rank
FROM
    employees;

--dense_rank
SELECT
    employee_id,
    department,
    salary,
    DENSE_RANK() OVER (ORDER BY salary DESC) AS dense_rank
FROM
    employees;

--lead
	SELECT
		employee_id,
		department,
		salary,
		LEAD(salary, 1) OVER (ORDER BY salary DESC) AS next_salary
	FROM
		employees;

--lag
SELECT
    employee_id,
    department,
    salary,
    LAG(salary, 1) OVER (ORDER BY salary DESC) AS previous_salary
FROM
    employees;




