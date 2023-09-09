
INSERT INTO all_departments(department_name)
VALUES
('Engineering'),
('Finance'),
('Legal'),
('Sales');

INSERT INTO all_roles(title, department, salary)
VALUES

('Engineer', 1, 80000),
('Designer', 1, 70000),
('Developer', 1, 100000),
('Analyst', 2, 70000),
('Accountant', 2, 75000),
('Auditor', 2, 85000),
('Lawyer', 3, 90000),
('Paralegal', 3, 65000),



INSERT INTO all_employees (id, first_name, last_name, title,  manager)
VALUES
    (1, 'Annabelle', 'Smith', 1,  NULL),
    (2, 'Matt', 'Johnson', 2, 1),
    (3, 'Mike', 'Brown', 3, 1),
    (4, 'Mary', 'Davis', 3, 1);

    (5, 'Robert', 'James', 4, 5),
    (6, 'Emily', 'Johnson', 5, 5),
    (7, 'Tony', 'Lewis', 4, 5),
    (8, 'Sophia', 'Cooper', 6, 5);

    (9, 'Olivia', 'Miller', 'Manager', 'Legal', 110000, NULL),
    (10, 'Liam', 'Fuller', 'Lawyer', 'Legal', 90000, 'Olivia Miller'),
    (11, 'Ava', 'Carver', 'Paralegal', 'Legal', 65000, 'Olivia Miller'),
    (12, 'Noah', 'Gardiner', 'Paralegal', 'Legal', 65000, 'Olivia Miller');

    
    (13, 'Taylor', 'Fisher', 'Manager', 'Sales', 120000, NULL),
    (14, 'William', 'Clarke', 'Sales Representative', 'Sales', 85000, 'Taylor Fisher'),
    (15, 'Charlotte', 'Young', 'Account Executive', 'Sales', 90000, 'Taylor Fisher'),
    (16, 'James', 'Campbell', 'Sales Manager', 'Sales', 110000, 'Taylor Fisher');


SELECT all_employees.id, all_employees.first_name, all_roles.title, all_roles.salary FROM all_employees LEFT JOIN all_roles ON all_employees.title = all_roles.id;