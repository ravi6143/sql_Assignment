-- Question- 1
--ans - 

/* A database is a structured collection of data organized and stored in a computer system. It is designed to
 efficiently manage and retrieve information. Databases are widely used in various applications, ranging 
 from simple personal data storage to complex enterprise systems.

SQL (Structured Query Language) and NoSQL (Not only SQL) are two different types of database management
 systems, each with its own approach to data storage and retrieval:

1.SQL Databases:

SQL databases are based on the relational model, where data is organized into tables with predefined schemas.
They use SQL as the standard language for defining and manipulating the data.
SQL databases enforce the ACID (Atomicity, Consistency, Isolation, Durability) properties, which ensure data
integrity and transactional consistency.
They are suitable for applications that require complex queries, strict data consistency, and well-defined 
schemas.
Examples of SQL databases include MySQL, PostgreSQL, Oracle, Microsoft SQL Server.

2.NoSQL Databases:

NoSQL databases are designed to handle large volumes of unstructured and semi-structured data.
They use various data models, such as key-value, document, columnar, or graph, to store and retrieve data.
NoSQL databases provide flexibility in data storage, allowing for dynamic schemas and easy scalability.
They sacrifice some of the ACID properties to achieve high scalability, availability, and performance.
NoSQL databases are suitable for applications that require horizontal scalability, handling rapidly changing
data, and high read/write throughput.
Examples of NoSQL databases include MongoDB, Cassandra, Couchbase, Redis.*/



-- Question -2
-- ans-

/*DDL stands for Data Definition Language. It is a subset of SQL (Structured Query Language) used to define
 and manage the structure of a database and its objects. DDL statements are responsible for creating,
  altering, and dropping database objects such as tables, indexes, views, and schemas.*/

/*1.CREATE:
The CREATE statement is used to create new database objects, such as tables, views, indexes, or schemas. It defines the structure of the object and specifies the attributes, data types, constraints, and other properties.
Example: Creating a table in a SQL database.*/




CREATE DATABASE if not exists sql_assignment;
CREATE Table if not exists sql_assignment.students(name VARCHAR(30), email VARCHAR(30), mobile INT);

/* 2.ALTER:
The ALTER statement is used to modify the structure or properties of an existing database object. It can be
 used to add, modify, or delete columns, change data types, add constraints, or rename objects.
Example: Adding a new column to an existing table in a SQL database.*/


ALTER Table sql_assignment.students ADD COLUMN course VARCHAR(30);



/* 3.TRUNCATE:
The TRUNCATE statement is used to delete all rows from a table, effectively resetting the table to an empty 
state. Unlike the DROP statement, it retains the table structure.
Example: Truncating a table in a SQL database.*/


TRUNCATE table students;


/* 4.DROP:
The DROP statement is used to remove an existing database object, such as a table, view, index, or schema.
 It permanently deletes the object and its data from the database.
Example: Dropping a table from a SQL database.*/


DROP Table students;



-- Question -3
-- ans -

/*DML stands for Data Manipulation Language. It is a subset of SQL (Structured Query Language) used to
 manipulate and manage the data within a database. DML statements are responsible for inserting, updating,
  and deleting data in database tables.*/

cREATE Table if not exists sql_assignment.students(name VARCHAR(30), email VARCHAR(30), mobile INT);

/* 1.INSERT:
The INSERT statement is used to insert new rows of data into a table. It specifies the table name and the
 values to be inserted into the corresponding columns.
Example: Inserting a new row into a table in a SQL database.*/


INSERT INTO  sql_assignment.students(name,email,mobile)
VALUES('ravi','ravi@gmail.com', 86890);



/* 2.UPDATE:
The UPDATE statement is used to modify existing data in a table. It allows you to change the values of one
 or more columns in one or multiple rows.
Example: Updating a specific row in a table in a SQL database.*/

UPDATE sql_assignment.students set email = 'sanjeet@gamil.com'
WHERE mobile = 86890;


/* 3.DELETE:
The DELETE statement is used to remove one or more rows of data from a table. It allows you to specify
 conditions to determine which rows should be deleted.
Example: Deleting specific rows from a table in a SQL database.*/


DELETE FROM sql_assignment.students
where mobile = 86890;



-- Quesition -4
-- ans- 

/*DQL stands for Data Query Language. It is a subset of SQL (Structured Query Language) used to retrieve
 data from a database. DQL focuses on querying and selecting data from one or more database tables.

The most commonly used DQL statement is the SELECT statement, which allows you to specify the columns and
 conditions to retrieve specific data from the tables. Here's an explanation of the SELECT statement with an example:

SELECT:
The SELECT statement is used to retrieve data from one or more tables in a database. It allows you to specify
 the columns you want to retrieve and apply conditions to filter the data.

Example: Retrieving data from a table in a SQL database.*/


SELECT name FROM sql_assignment.students;



-- Question -5
-- ans -

/*In database design, primary keys and foreign keys are used to establish relationships between tables. 
Here's an explanation of each along with examples using SQL code:

1.Primary Key:
A primary key is a column or a combination of columns in a table that uniquely identifies each row. 
It provides a way to ensure data integrity and enable efficient data retrieval. Primary keys must be unique
 and not null.
Example: Creating a table with a primary key using SQL.*/

CREATE table if not exists sql_assignment.course_details(
    id INT PRIMARY KEY,
    name VARCHAR(20),
    duration VARCHAR(30)
)

INSERT INTO sql_assignment.course_details(id, name, duration)
VALUES(1,'data science','nine months')

insert into course_details(id,name,duration)
values(2,'data science','nine months')

insert into course_details(id,name,duration)
values(3, 'web development','eight months')


/* 2.Foreign Key:
A foreign key is a column or a combination of columns in a table that refers to the primary key of another
 table. It establishes a relationship between two tables, enforcing referential integrity and allowing data 
 to be shared across tables.
Example: Creating a table with a foreign key using SQL.*/


create table if not exists sql_assignment.faculty(
  facultyid INT PRIMARY KEY,name VARCHAR(20), id INT,
  Foreign Key (id) REFERENCES course_details(id));


-- here id is foreign key which is accessed from table course_details to establsih communication .



--Question -6
-- ans - 



/*1.cursor(): The cursor() method creates a cursor object that allows you to execute SQL statements and
 retrieve results from the database. It is a method provided by the MySQL Connector/Python library. 
 In the code above, we create a cursor object using cursor = conn.cursor().

 2.execute(): The execute() method is used to execute SQL queries or statements through the cursor object.
 It takes the SQL query as a parameter and executes it on the connected MySQL database. In the code above, 
 we execute a SELECT query using cursor.execute(query), where query is a variable holding the SQL query.
 
 
 here is a code for creating database named student by using a python code.*/



 import mysql.connector
db = mysql.connector.connect(
    host = 'localhost',
    user = 'abc',
    password = 'password'
    
)

cursor = db.cursor()
cursor.execute("create database  if not exists student")



--Question -7
-- ans -

/*In a standard SQL query, the clauses are generally executed in the following order:

1.SELECT: The SELECT clause specifies the columns to be retrieved from the database tables. It is the first
 clause executed in a query.

2.FROM: The FROM clause specifies the table(s) from which the data will be retrieved. It indicates the source
 table(s) for the query.

3.WHERE: The WHERE clause filters the rows based on specified conditions. It narrows down the result set by
 applying logical conditions.

4.GROUP BY: The GROUP BY clause groups the rows based on one or more columns. It is typically used with
 aggregate functions to perform calculations on each group of rows.

5.HAVING: The HAVING clause filters the groups created by the GROUP BY clause based on specified conditions.
 It allows filtering on aggregated values.

6.ORDER BY: The ORDER BY clause sorts the result set based on specified columns in ascending or descending
 order.

7.LIMIT/OFFSET: The LIMIT/OFFSET clause restricts the number of rows returned by the query. It is used to 
implement pagination or to limit the result set to a specific range.

It's important to note that not all clauses are mandatory in every SQL query. The clauses required and their
 order of execution can vary depending on the specific requirements of the query. However, this order of
  execution provides a general guideline for understanding the logical flow of a typical SQL query.*/








