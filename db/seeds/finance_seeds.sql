INSERT INTO finance_department (id, first_name, last_name, title, department, salary, manager)
VALUES
    (1, 'Robert', 'James', 'Manager', 'Finance', 100000, NULL),
    (2, 'Emily', 'Johnson', 'Accountant', 'Finance', 75000, 'Robert James'),
    (3, 'Tony', 'Lewis', 'Analyst', 'Finance', 80000, 'Robert James'),
    (4, 'Sophia', 'Cooper', 'Auditor', 'Finance', 85000, 'Robert James');