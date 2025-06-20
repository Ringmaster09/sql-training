CREATE DATABASE IF NOT EXISTS series;
USE series;

DROP TABLE IF EXISTS reviews;
DROP TABLE IF EXISTS series;
DROP TABLE IF EXISTS reviewers;

CREATE TABLE reviewers (
  id INT PRIMARY KEY AUTO_INCREMENT,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL
);

CREATE TABLE series (
  id INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(100),
  released_year YEAR,
  genre VARCHAR(100)
);

CREATE TABLE reviews (
  id INT PRIMARY KEY AUTO_INCREMENT,
  rating DECIMAL(2,1),
  series_id INT,
  reviewer_id INT,
  FOREIGN KEY (series_id) REFERENCES series(id),
  FOREIGN KEY (reviewer_id) REFERENCES reviewers(id)
);

CREATE VIEW series_ratings AS
SELECT s.title, AVG(r.rating) AS average_rating
FROM series s
JOIN reviews r ON s.id = r.series_id
GROUP BY s.id;

SET sql_mode = 'STRICT_ALL_TABLES';
