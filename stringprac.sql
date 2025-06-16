CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100)
);
INSERT INTO users (first_name, last_name, email)
VALUES 
('John', 'Doe', 'john.doe@example.com'),
('Alice', 'Smith', 'alice123@gmail.com'),
('Bob', 'Johnson', 'bob_j@example.net');

-- CONCAT
SELECT CONCAT(first_name, ' ', last_name) AS full_name FROM users;

-- UPPER and LOWER
SELECT UPPER(first_name), LOWER(last_name) FROM users;

-- LENGTH
SELECT email, LENGTH(email) AS email_length FROM users;

-- SUBSTRING
SELECT SUBSTRING(email, 1, 5) AS email_start FROM users;

-- REPLACE
SELECT REPLACE(email, '@', '[at]') AS safe_email FROM users;
