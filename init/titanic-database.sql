create database titanic_dataset;
use titanic_dataset;

CREATE TABLE IF NOT EXISTS train (
  PassengerId INT PRIMARY KEY,
  Survived INT,
  Pclass INT,
  Name VARCHAR(100),
  Sex VARCHAR(10),
  Age INT,
  SibSp INT,
  Parch INT,
  Ticket VARCHAR(20),
  Fare FLOAT,
  Cabin VARCHAR(20),
  Embarked CHAR
);

LOAD DATA INFILE '/var/lib/mysql-files/titanic-train.csv'
INTO TABLE train
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;
