-- Engineering Department --
DROP DATABASE IF EXISTS engineering_db;
CREATE DATABASE engineering_db;

USE engineering_db;

CREATE TABLE engineering_department (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(80) NOT NULL,
    last_name VARCHAR(80) NOT NULL,
    title VARCHAR(80) NOT NULL,
    department VARCHAR (80) NOT NULL,
    salary INT NOT NULL,
    manager VARCHAR (80) 
);