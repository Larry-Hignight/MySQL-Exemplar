create database housing_data;
use housing_data;

CREATE TABLE IF NOT EXISTS home_sales (
  id INT PRIMARY KEY,
  sale_date VARCHAR(20),
  price INT,
  bedrooms INT,
  bathrooms FLOAT,
  sqft_living INT,
  sqft_lot INT,
  floors FLOAT
  has_waterfront INT,
  has_view INT,
  condition INT,
  grade INT,
  sqft_above INT,
  sqft_basement INT,
  yr_built INT,
  yr_renovated INT,
  zipcode INT,
  lat DOUBLE,
  long DOUBLE,
  sqft_living15 INT,
  sqft_lot15 INT,
);

LOAD DATA INFILE '/var/lib/mysql-files/house-data.csv'
INTO TABLE home_sales
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;


