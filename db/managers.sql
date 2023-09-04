-- All Managers --
DROP DATABASE IF EXISTS managers_db;
CREATE DATABASE managers_db;

USE managers_db;

CREATE TABLE all_managers (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(80) NOT NULL,
    last_name VARCHAR(80) NOT NULL,
    title VARCHAR(80) NOT NULL,
    department VARCHAR (80) NOT NULL,
    salary INT NOT NULL
);