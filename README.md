# MySQL-Exemplar

## Databases

This exemplar contains the following preconfigured databases:

* TODO - The Kaggle Titanic training data (Currently in the data directory; Manual installation instructions below)
* TODO - Empty test database
* TODO - Housing database
* TODO - Library database from the ??? textbook
 

## MySQL Clients / Connections

### Connecting with the _mysql_ client

* sudo docker run --rm -e MYSQL_ROOT_PASSWORD=12345678 -d mysql/mysql-server
* sudo docker ps
* sudo docker exec -it <container-name> bash  # Alternatively... 
* sudo docker exec -it <container-name> mysql -u root -p

### How to manually load the Kaggle Titanic training data:

* cd data
* sudo docker run --rm -e MYSQL_ROOT_PASSWORD=12345678 -v `pwd`:/data -d mysql/mysql-server
* sudo docker ps
* sudo docker exec -it <container-name> mysql -u root -p
* create database titanic_data;
* use titanic_data;
* CREATE TABLE IF NOT EXISTS train (PassengerId INT PRIMARY KEY, Survived INT, Pclass INT, Name VARCHAR(100), Sex VARCHAR(10), Age VARCHAR(4), SibSp INT, Parch INT,  Ticket VARCHAR(20), Fare FLOAT, Cabin VARCHAR(20), Embarked CHAR);
** TODO - I had to make age a varchar
* LOAD DATA INFILE '/var/lib/mysql-files/train.csv' INTO TABLE train FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r\n' IGNORE 1 LINES; 


## Python Notes

At the moment, there is only a Python script and the compose file uses an image named db-exemplar:

* docker build --rm -t db-exemplar .
* docker stack deploy -c compose-python-mysql.yml <stack-name>
