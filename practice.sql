CREATE DATABASE pet_shop;
USE pet_shop;

CREATE TABLE dogs (
    name VARCHAR(50),
    breed VARCHAR(90),
    age INT
);

CREATE TABLE cats (
    name VARCHAR(50),
    age INT
);
USE pet_shop;

-- Insert into dogs table
INSERT INTO dogs (name, breed, age) VALUES
('Max', 'Labrador', 4),
('Buddy', 'Beagle', 2),
('Rocky', 'German Shepherd', 5);

-- Insert into cats table
INSERT INTO cats (name, age) VALUES
('Whiskers', 3),
('Mittens', 2);

