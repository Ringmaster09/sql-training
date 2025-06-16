CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    city VARCHAR(50),
    age INT
);
INSERT INTO customers (first_name, last_name, city, age) VALUES
('Alice', 'Smith', 'Delhi', 28),
('Bob', 'Brown', 'Mumbai', 35),
('Charlie', 'Davis', 'Delhi', 22),
('David', 'Evans', 'Chennai', 42),
('Eve', 'Johnson', 'Delhi', 29);

-- WHERE and AND
SELECT * FROM customers WHERE city = 'Delhi' AND age > 25;

-- BETWEEN
SELECT * FROM customers WHERE age BETWEEN 25 AND 40;

-- IN
SELECT * FROM customers WHERE city IN ('Delhi', 'Chennai');

-- LIKE
SELECT * FROM customers WHERE first_name LIKE 'A%';

-- ORDER BY
SELECT * FROM customers ORDER BY age DESC;

-- LIMIT
SELECT * FROM customers ORDER BY age ASC LIMIT 3;

-- DISTINCT
SELECT DISTINCT city FROM customers;
