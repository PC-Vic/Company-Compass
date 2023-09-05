-- Sales Department --
DROP DATABASE IF EXISTS sales_db;
CREATE DATABASE sales_db;

USE sales_db;

CREATE TABLE sales_department (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(80) NOT NULL,
    last_name VARCHAR(80) NOT NULL,
    title VARCHAR(80) NOT NULL,
    department VARCHAR (80) NOT NULL,
    salary INT NOT NULL,
    manager VARCHAR (80) 
);
