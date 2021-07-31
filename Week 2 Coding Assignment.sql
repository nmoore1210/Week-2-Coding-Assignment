Select title, COUNT(title) FROM employees e INNER JOIN titles t ON e.emp_no = t.emp_no 
WHERE birth_date > '1965-01-01' GROUP BY title;

Select t.title, AVG(salary) FROM titles t INNER JOIN salaries s ON t.emp_no = s.emp_no GROUP BY t.title;

Select d.dept_name, SUM(salary)
FROM dept_emp de
INNER JOIN departments d ON de.dept_no = d.dept_no
INNER JOIN salaries s ON s.emp_no = de.emp_no
WHERE s.from_date > '1990-01-01' AND s.to_date < '1993-01-01'
GROUP BY d.dept_name;