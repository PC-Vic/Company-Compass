-- Department --
DROP DATABASE IF EXISTS company_db;
CREATE DATABASE company_db;

USE company_db;

CREATE TABLE all_departments (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    department_name VARCHAR (30) NOT NULL
);

CREATE TABLE all_roles (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(30) NOT NULL,
    department INT NOT NULL,
    salary INT NOT NULL,
    CONSTRAINT FK_department FOREIGN KEY (department)
    REFERENCES all_departments(id)
);

-- All Employees --
CREATE TABLE all_employees (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    title INT NOT NULL,
    manager INT, 
    CONSTRAINT FK_title FOREIGN KEY (title)
    REFERENCES all_roles(id),
    CONSTRAINT FK_manager FOREIGN KEY (manager)
    REFERENCES all_employees(id)
);