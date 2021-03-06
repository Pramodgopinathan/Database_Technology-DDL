CREATE TABLE DEPARTMENTS (
	dept_name INT NOT NULL PRIMARY KEY,
	dept_building INT NOT NULL,
	dept_budget INT,	
);

CREATE TABLE STUDENTS (
	dept_name INT NOT NULL, 
	student_id INT NOT NULL UNIQUE, 
	student_name varchar(255),
	student_total_credit INT, 
	student_enronment_date DATE DEFAULT GETDATE(),
	student_city varchar(255),
	student_age INT,
	CHECK (student_age>= 21 AND student_city= 'Bangalore'),
	PRIMARY KEY (student_id),
	FOREIGN KEY(dept_name) REFERENCES dbo.DEPARTMENTS(dept_name)
);
