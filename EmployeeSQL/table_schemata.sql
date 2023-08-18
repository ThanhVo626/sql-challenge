drop table titles;
drop table departments;
drop table dept_manager;
drop table dept_emp;
drop table salaries;
drop table employees;


create table titles (
	title_id VARCHAR(7) NOT NULL,
	title VARCHAR(25) NOT NULL,
	Primary key (title_id)
);

create table employees(
	emp_no INT NOT NULL,
	emp_title_id VARCHAR(7) NOT NULL,
	birth_date date NOT NULL,
	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR (20) NOT NULL,
	sex VARCHAR(1) NOT NULL,
	hire_date date NOT NULL,
	primary key (emp_no),
	foreign key(emp_title_id) references titles (title_id)
);

create table departments(
	dept_no VARCHAR(6) NOT NULL,
	dept_name VARCHAR(25) NOT NULL,
	primary key (dept_no)
);

create table dept_emp(
	emp_no INT NOT NULL,
	dept_no VARCHAR(6) NOT NULL,
	foreign key (emp_no) references employees (emp_no),
	foreign key (dept_no) references departments (dept_no)
);

create table dept_manager(
	dept_no VARCHAR(6) NOT NULL,
	emp_no INT NOT NULL,
	foreign key (dept_no) references departments (dept_no),
	foreign key (emp_no) references employees (emp_no)
);

create table salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	foreign key (emp_no) references employees (emp_no)
	
);










