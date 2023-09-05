-- Legal Department --
DROP DATABASE IF EXISTS legal_db;
CREATE DATABASE legal_db;

USE legal_db;

CREATE TABLE legal_department (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(80) NOT NULL,
    last_name VARCHAR(80) NOT NULL,
    title VARCHAR(80) NOT NULL,
    department VARCHAR (80) NOT NULL,
    salary INT NOT NULL,
    manager VARCHAR (80) 
);