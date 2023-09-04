-- Engineering Department Seeds --
INSERT INTO engineering_department (id, first_name, last_name, title, department, salary, manager)
VALUES
    (1, 'Annabelle', 'Smith', 'Engineer', 'Engineering', 95000, NULL),
    (2, 'Matt', 'Johnson', 'Designer', 'Engineering', 85000, 'Annabelle Smith'),
    (3, 'Mike', 'Brown', 'Developer', 'Engineering', 80000, 'Annabelle Smith'),
    (4, 'Mary', 'Davis', 'Developer', 'Engineering', 80000, 'Annabelle Smith');


-- Finance Department Seeds --
INSERT INTO finance_department (id, first_name, last_name, title, department, salary, manager)
VALUES
    (1, 'Robert', 'James', 'Manager', 'Finance', 100000, NULL),
    (2, 'Emily', 'Johnson', 'Accountant', 'Finance', 75000, 'Robert James'),
    (3, 'Tony', 'Lewis', 'Analyst', 'Finance', 80000, 'Robert James'),
    (4, 'Sophia', 'Cooper', 'Auditor', 'Finance', 85000, 'Robert James');


-- Legal Department Seeds --
INSERT INTO legal_department (id, first_name, last_name, title, department, salary, manager)
VALUES
    (1, 'Olivia', 'Miller', 'Manager', 'Legal', 110000, NULL),
    (2, 'Liam', 'Fuller', 'Lawyer', 'Legal', 90000, 'Olivia Miller'),
    (3, 'Ava', 'Carver', 'Paralegal', 'Legal', 75000, 'Olivia Miller'),
    (4, 'Noah', 'Gardiner', 'Legal Analyst', 'Legal', 80000, 'Olivia Miller');


-- Sales Department Seeds --
INSERT INTO sales_department (id, first_name, last_name, title, department, salary, manager)
VALUES
    (1, 'Taylor', 'Fisher', 'Manager', 'Sales', 120000, NULL),
    (2, 'William', 'Clarke', 'Sales Representative', 'Sales', 85000, 'Taylor Fisher'),
    (3, 'Charlotte', 'Young', 'Account Executive', 'Sales', 90000, 'Taylor Fisher'),
    (4, 'James', 'Campbell', 'Sales Manager', 'Sales', 110000, 'Taylor Fisher');



-- All Employees Seed Data --
INSERT INTO engineering_department (id, first_name, last_name, title, department, salary, manager)
VALUES
    (1, 'Annabelle', 'Smith', 'Engineer', 'Engineering', 95000, NULL),
    (2, 'Matt', 'Johnson', 'Designer', 'Engineering', 85000, 'Annabelle Smith'),
    (3, 'Mike', 'Brown', 'Developer', 'Engineering', 80000, 'Annabelle Smith'),
    (4, 'Mary', 'Davis', 'Developer', 'Engineering', 80000, 'Annabelle Smith');
    (5, 'Robert', 'James', 'Manager', 'Finance', 100000, NULL),
    (6, 'Emily', 'Johnson', 'Accountant', 'Finance', 75000, 'Robert James'),
    (7, 'Tony', 'Lewis', 'Analyst', 'Finance', 80000, 'Robert James'),
    (8, 'Sophia', 'Cooper', 'Auditor', 'Finance', 85000, 'Robert James');
    (9, 'Olivia', 'Miller', 'Manager', 'Legal', 110000, NULL),
    (10, 'Liam', 'Fuller', 'Lawyer', 'Legal', 90000, 'Olivia Miller'),
    (11, 'Ava', 'Carver', 'Paralegal', 'Legal', 75000, 'Olivia Miller'),
    (12, 'Noah', 'Gardiner', 'Legal Analyst', 'Legal', 80000, 'Olivia Miller');
    (13, 'Taylor', 'Fisher', 'Manager', 'Sales', 120000, NULL),
    (14, 'William', 'Clarke', 'Sales Representative', 'Sales', 85000, 'Taylor Fisher'),
    (15, 'Charlotte', 'Young', 'Account Executive', 'Sales', 90000, 'Taylor Fisher'),
    (16, 'James', 'Campbell', 'Sales Manager', 'Sales', 110000, 'Taylor Fisher');


-- Managers Seed Data --
INSERT INTO managers (id, first_name, last_name, title, department, salary)
VALUES
    (1, 'Annabelle', 'Smith', 'Engineering Manager', 'Engineering', 120000),
    (2, 'Robert', 'James', 'Finance Manager', 'Finance', 130000),
    (3, 'Olivia', 'Miller', 'Legal Manager', 'Legal', 125000),
    (4, 'Taylor', 'Fisher', 'Sales Manager', 'Sales', 140000);


-- Roles Seed Data --
INSERT INTO roles (id, title, department, salary)
VALUES
    (1, 'Engineer', 'Engineering', 95000),
    (2, 'Designer', 'Engineering', 85000),
    (3, 'Developer', 'Engineering', 80000),
    (4, 'Manager', 'Engineering', 120000),
    (5, 'Accountant', 'Finance', 75000),
    (6, 'Analyst', 'Finance', 80000),
    (7, 'Auditor', 'Finance', 85000),
    (8, 'Manager', 'Finance', 130000),
    (9, 'Lawyer', 'Legal', 90000),
    (10, 'Paralegal', 'Legal', 75000),
    (11, 'Legal Analyst', 'Legal', 80000),
    (12, 'Manager', 'Legal', 125000),
    (13, 'Sales Representative', 'Sales', 85000),
    (14, 'Account Executive', 'Sales', 90000),
    (15, 'Sales Manager', 'Sales', 140000);
