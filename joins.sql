CREATE TABLE authors (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL
);

CREATE TABLE books (
  id SERIAL PRIMARY KEY,
  title VARCHAR(100) NOT NULL,
  author_id INT,
  FOREIGN KEY (author_id) REFERENCES authors(id)
);

CREATE TABLE students (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL
);

CREATE TABLE enrollments (
  id SERIAL PRIMARY KEY,
  student_id INT,
  course VARCHAR(100),
  FOREIGN KEY (student_id) REFERENCES students(id)
);

CREATE TABLE customers (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL
);

CREATE TABLE orders (
  id SERIAL PRIMARY KEY,
  customer_id INT,
  product VARCHAR(100),
  FOREIGN KEY (customer_id) REFERENCES customers(id)
);
INSERT INTO authors (name) VALUES ('J.K. Rowling'), ('George R.R. Martin'), ('J.R.R. Tolkien');

INSERT INTO books (title, author_id) VALUES 
('Harry Potter', 1),
('A Game of Thrones', 2),
('The Hobbit', 3),
('The Silmarillion', 3);

INSERT INTO students (name) VALUES ('Alice'), ('Bob'), ('Charlie');

INSERT INTO enrollments (student_id, course) VALUES
(1, 'Math'),
(1, 'Science'),
(2, 'Math'),
(3, 'History');

INSERT INTO customers (name) VALUES ('Priyansh'), ('Riya'), ('Aman');

INSERT INTO orders (customer_id, product) VALUES
(1, 'Laptop'),
(1, 'Mouse'),
(2, 'Keyboard');
SELECT title, name FROM books JOIN authors ON books.author_id = authors.id;

SELECT students.name, enrollments.course 
FROM enrollments 
JOIN students ON enrollments.student_id = students.id;

SELECT customers.name, orders.product 
FROM orders 
JOIN customers ON orders.customer_id = customers.id;
