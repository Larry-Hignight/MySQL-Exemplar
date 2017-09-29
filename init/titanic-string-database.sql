create database titanic_string;
use titanic_string;

CREATE TABLE IF NOT EXISTS train (
  PassengerId INT PRIMARY KEY,
  Survived VARCHAR(100),
  Pclass VARCHAR(100),
  Name VARCHAR(100),
  Sex VARCHAR(10),
  Age VARCHAR(4),
  SibSp VARCHAR(100),
  Parch VARCHAR(100),
  Ticket VARCHAR(20),
  Fare VARCHAR(100),
  Cabin VARCHAR(20),
  Embarked VARCHAR(100)
);

LOAD DATA INFILE '/var/lib/mysql-files/train.csv'
INTO TABLE train
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;
