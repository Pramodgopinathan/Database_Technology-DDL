# Data Definition Language

Structured Query Language (SQL) is used to perform certain operations on the existing database. These SQL commands are mainly categorized into four categories as:
1. DDL - Data Definition Language
2. DQL - Data Query Language
3. DML - Data Manipulation Language
4. DCL - Data Control Language

Following are the SQL Command
1. DDL (CREATE, DROP, ALTER AND TRUNCATE)
2. DML (INSERT, UPDATE, DELETE, CALL, EXPLAIN CALL, LOCK)
3. DQL - SELECT
4. DCL - (GRANT, REVOKE)

DDL could be used to define the database schema.

## How do we CREATE TABLE using SQL command?

* UNIQUE -  The UNIQUE constraint ensures that all values in a column are different.
* NOT NULL - The NOT NULL constraint enforces a column to NOT accept NULL values.
* PRIMARY KEY - The PRIMARY KEY constraint uniquely identifies each record in a table.
* CHECK - The CHECK constraint is used to limit the value range that can be placed in a column.
* DEFAULT - The DEFAULT constraint is used to set a default value for a column.
* FOREIGN KEY - The FOREIGN KEY constraint is used to prevent actions that would destroy links between tables.

```sql
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
```
`Commands completed successfully.`

## How do we ALTER TABLE using SQL command?
