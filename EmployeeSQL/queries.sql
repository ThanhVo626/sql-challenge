-q1
select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
from employees
join salaries
on employees.emp_no = salaries.emp_no ;

-q2
select employees.first_name, employees.last_name, employees.hire_date
from employees
where hire_date between '1/1/1986' and '12/31/1986';

-q3
select departments.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
from departments
join dept_manager
on departments.dept_no = dept_manager.dept_no
join employees
on dept_manager.emp_no = employees.emp_no;

-q4
select departments.dept_no,departments.dept_name,employees.last_name, employees.first_name
from departments
join dept_emp
on departments.dept_no = dept_emp.dept_no
join employees
on dept_emp.emp_no = employees.emp_no;

-q5
select first_name, last_name, sex
from employees
where first_name = 'Hercules'
and last_name like 'B%';

-q6
select employees.emp_no,employees.last_name, employees.first_name
from employees
join dept_emp
on dept_emp.emp_no = employees.emp_no
where dept_emp.dept_no = 'd007';

-q7
select employees.emp_no,employees.last_name, employees.first_name,departments.dept_name
from employees
join dept_emp
on dept_emp.emp_no = employees.emp_no
join departments
on dept_emp.dept_no = departments.dept_no
where departments.dept_name = 'Sales'
or departments.dept_name = 'Development'

-q8
select last_name,
COUNT(last_name)
from employees
group by last_name
order by count(last_name) DESC;