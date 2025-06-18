CREATE TABLE Employees (

    id INT,
    name VARCHAR(50),
    age INT,
    department VARCHAR(50),
    salary INT
);


INSERT INTO Employees VALUES
(1, 'Alice', 25, 'Engineering', 70000),
(2, 'Bob', 32, 'HR', 50000),
(3, 'Charlie', 29, 'Engineering', 80000),
(4, 'Diana', 22, 'Marketing', 45000),
(5, 'Eve', 35, 'Engineering', 90000);

-
SELECT * FROM Employees WHERE age > 30;


SELECT * FROM Employees WHERE salary <= 70000;


SELECT * FROM Employees
WHERE department = 'Engineering' AND salary > 75000;


SELECT * FROM Employees
WHERE department = 'HR' OR salary < 50000;

-- Employees not in Engineering
SELECT * FROM Employees
WHERE NOT department = 'Engineering';
