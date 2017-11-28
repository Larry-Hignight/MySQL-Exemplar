create database titanic_dataset;
use titanic_dataset;

CREATE TABLE IF NOT EXISTS house (
  id INT PRIMARY KEY,
  date VARCHAR(20),
  price INT,
  bedrooms INT,
  bathrooms FLOAT,
  sqft_living INT,
  sqft_lot INT,
  floors FLOAT
);

LOAD DATA INFILE '/var/lib/mysql-files/house-data.csv'
INTO TABLE house
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;
