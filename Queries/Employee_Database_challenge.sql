-- CHALLENGE DELIVERABLE 1

-- Retirement Titles Table
SELECT emp.emp_no,
	emp.first_name,
	emp.last_name,
	tit.title,
	tit.from_date,
	tit.to_date
INTO retirement_titles
FROM employees AS emp
INNER JOIN titles AS tit
ON emp.emp_no = tit.emp_no
WHERE (emp.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no;

-- Unique Titles Table
SELECT DISTINCT ON (emp_no) emp_no,
	first_name,
	last_name,
	title
INTO unique_titles
FROM retirement_titles
WHERE to_date = '9999-01-01'
ORDER BY emp_no ASC, to_date DESC;

-- Retiring Titles table
SELECT COUNT (emp_no) AS retiring_count, title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY retiring_count DESC

-- DELIVERABLE 2

-- Mentorship Eligibility table
SELECT DISTINCT ON (emp.emp_no) emp.emp_no,
	emp.first_name,
	emp.last_name,
	emp.birth_date,
	de.from_date,
	de.to_date,
	t.title
INTO mentorship_eligibility
FROM employees as emp
INNER JOIN dept_emp as de
ON (emp.emp_no = de.emp_no)
INNER JOIN titles as t
ON (emp.emp_no = t.emp_no)
WHERE (de.to_date = '9999-01-01')
	AND (emp.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY emp.emp_no