-- Finance Department --
DROP DATABASE IF EXISTS finance_db;
CREATE DATABASE finance_db;

USE finance_db;

CREATE TABLE finance_department (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(80) NOT NULL,
    last_name VARCHAR(80) NOT NULL,
    title VARCHAR(80) NOT NULL,
    department VARCHAR (80) NOT NULL,
    salary INT NOT NULL,
    manager VARCHAR (80) 
);