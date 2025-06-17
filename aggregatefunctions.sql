CREATE TABLE sales (
    sale_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    quantity INT,
    price DECIMAL(10, 2),
    sale_date DATE
);
INSERT INTO sales (product_name, category, quantity, price, sale_date) VALUES
('Notebook', 'Stationery', 10, 2.50, '2025-06-15'),
('Pen', 'Stationery', 20, 1.00, '2025-06-15'),
('Water Bottle', 'Kitchen', 5, 10.00, '2025-06-16'),
('Notebook', 'Stationery', 7, 2.50, '2025-06-17'),
('Lunch Box', 'Kitchen', 3, 15.00, '2025-06-17');
-- Just checking how many sales entries there are in total
SELECT COUNT(*) AS total_sales FROM sales;

-- Wanna see how many items in total we’ve sold (sum of quantity column)
SELECT SUM(quantity) AS total_quantity FROM sales;

-- Checking average price of all the products we sold
SELECT AVG(price) AS average_price FROM sales;

-- What’s the most expensive product sold? Let’s get the highest price
SELECT MAX(price) AS max_price FROM sales;

-- Also, what’s the cheapest product sold? Just using MIN for that
SELECT MIN(price) AS min_price FROM sales;

-- Grouping by category (like Stationery, Kitchen) and summing quantities
-- Helps see which category sold the most overall
SELECT category, SUM(quantity) AS total_sold
FROM sales
GROUP BY category;

-- Grouping by each product and calculating average quantity sold
-- Like how many pens on average, how many bottles, etc.
SELECT product_name, AVG(quantity) AS avg_quantity
FROM sales
GROUP BY product_name;
