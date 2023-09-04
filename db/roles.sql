-- Company Roles --
DROP DATABASE IF EXISTS roles_db;
CREATE DATABASE roles_db;

USE roles_db;

CREATE TABLE all_roles (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(80) NOT NULL,
    department VARCHAR (80) NOT NULL,
    salary INT NOT NULL
);