-- Engineering Department --
DROP DATABASE IF EXISTS engineering_db;
CREATE DATABASE engineering_db;

USE engineering_db;

CREATE TABLE engineering_employees (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(80) NOT NULL,
    last_name VARCHAR(80) NOT NULL,
    title VARCHAR(80) NOT NULL,
    department VARCHAR (80) NOT NULL,
    salary INT NOT NULL,
    manager VARCHAR (80) 
);

-- Finance Department --
DROP DATABASE IF EXISTS finance_db;
CREATE DATABASE finance_db;

USE finance_db;

CREATE TABLE finance_employees (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(80) NOT NULL,
    last_name VARCHAR(80) NOT NULL,
    title VARCHAR(80) NOT NULL,
    department VARCHAR (80) NOT NULL,
    salary INT NOT NULL,
    manager VARCHAR (80) 
);

-- Legal Department --
DROP DATABASE IF EXISTS legal_db;
CREATE DATABASE legal_db;

USE legal_db;

CREATE TABLE legal_employees (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(80) NOT NULL,
    last_name VARCHAR(80) NOT NULL,
    title VARCHAR(80) NOT NULL,
    department VARCHAR (80) NOT NULL,
    salary INT NOT NULL,
    manager VARCHAR (80) 
);

-- Sales Department --
DROP DATABASE IF EXISTS sales_db;
CREATE DATABASE sales_db;

USE sales_db;

CREATE TABLE sales_employees (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(80) NOT NULL,
    last_name VARCHAR(80) NOT NULL,
    title VARCHAR(80) NOT NULL,
    department VARCHAR (80) NOT NULL,
    salary INT NOT NULL,
    manager VARCHAR (80) 
);
