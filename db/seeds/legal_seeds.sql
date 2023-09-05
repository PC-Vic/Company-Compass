shINSERT INTO legal_department (id, first_name, last_name, title, department, salary, manager)
VALUES
    (1, 'Olivia', 'Miller', 'Manager', 'Legal', 110000, NULL),
    (2, 'Liam', 'Fuller', 'Lawyer', 'Legal', 90000, 'Olivia Miller'),
    (3, 'Ava', 'Carver', 'Paralegal', 'Legal', 75000, 'Olivia Miller'),
    (4, 'Noah', 'Gardiner', 'Legal Analyst', 'Legal', 80000, 'Olivia Miller');