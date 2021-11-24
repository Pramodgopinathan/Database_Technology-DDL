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

```sql:
CREATE TABLE STUDENTS (
	dept_name INT NOT NULL, /*Give null values*/
	student_id INT NOT NULL, 
	student_name varchar(50),
	student_total_credit INT, 
	student_enronment_date DATE DEFAULT GETDATE(),
	student_city varchar(50),
	student_age INT CHECK (student_age>= 21 AND student_city= 'Bangalore'),
	PRIMARY KEY (student_id)
);
```
