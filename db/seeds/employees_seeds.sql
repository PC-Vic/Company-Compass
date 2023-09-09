
INSERT INTO all_departments(department_name)
VALUES
('Engineering'),
('Finance'),
('Legal'),
('Sales');

INSERT INTO all_roles(title, department, salary)
VALUES

('Engineer Manager', 1, 95000),
('Engineer', 1, 80000),
('Designer', 1, 70000),
('Developer', 1, 80000),

('Finance Manager', 2, 85000),
('Finance Analyst', 2, 70000),
('Accountant', 2, 75000),
('Auditor', 2, 85000),

('Lawyer Manager', 3, 90000),
('Lawyer', 3, 90000),
('Paralegal', 3, 65000),

('Sales Manager', 4, 85000),
('Sales Rep', 4, 70000),
('Accountant', 2, 80000),
('Auditor', 2, 80000),



INSERT INTO all_employees (id, first_name, last_name, title,  manager)
VALUES
    (1, 'Annabelle', 'Smith', 1,  NULL),
    (2, 'Matt', 'Johnson', 3, 1),
    (3, 'Mike', 'Brown', 4, 1),
    (4, 'Mary', 'Davis', 4, 1);

    (5, 'Robert', 'James', 5, NULL),
    (6, 'Emily', 'Johnson', 6, 5),
    (7, 'Tony', 'Lewis', 7, 5),
    (8, 'Sophia', 'Cooper', 8, 5);


    (9, 'Olivia', 'Miller', 9, NULL),
    (10, 'Liam', 'Fuller', 10, 9),
    (11, 'Ava', 'Carver', 10, 9),
    (12, 'Noah', 'Gardiner', 11, 9);

    
    (13, 'Taylor', 'Fisher', 12, NULL),
    (14, 'William', 'Clarke', 13, 12),
    (15, 'Charlotte', 'Young', 14, 12),
    (16, 'James', 'Campbell', 15, 12);


SELECT all_employees.id, all_employees.first_name, all_roles.title, all_roles.salary FROM all_employees LEFT JOIN all_roles ON all_employees.title = all_roles.id;