CREATE TABLE shirts (
    shirt_id INT AUTO_INCREMENT PRIMARY KEY,
    article VARCHAR(50),
    color VARCHAR(50),
    shirt_size VARCHAR(80),
    last_worn INT
);
INSERT INTO shirts (article, color, shirt_size, last_worn)
VALUES
('T-Shirt', 'Red', 'M', 5),
('Polo', 'Blue', 'L', 2),
('Dress Shirt', 'White', 'M', 10),
('Tank Top', 'Black', 'S', 1),
('Hoodie', 'Gray', 'XL', 4);
-- CREATE
INSERT INTO shirts (article, color, shirt_size, last_worn)
VALUES ('Sweater', 'Green', 'L', 0);

-- READ
SELECT * FROM shirts;

-- UPDATE
UPDATE shirts
SET last_worn = 7
WHERE shirt_id = 1;

-- DELETE
DELETE FROM shirts
WHERE shirt_id = 3;
