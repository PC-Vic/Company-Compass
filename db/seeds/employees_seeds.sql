INSERT INTO all_employees (id, first_name, last_name, title, department, salary, manager)
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
