# MySQL-Exemplar

## Databases

This exemplar contains the following preconfigured databases:

* TODO - The Kaggle Titanic training data (currently in the data directory)
* TODO - Empty test database
* TODO - Housing database
* TODO - Library database from the ??? textbook
 

## Clients

### Connecting with the _mysql_ client

* sudo docker run --rm -e MYSQL_ROOT_PASSWORD=12345678 -d mysql/mysql-server
* sudo docker ps
* sudo docker exec -it <container-name> mysql -u root -p
* 

To load the Kaggle Titanic training data:
* cd data
* sudo docker run --rm -e MYSQL_ROOT_PASSWORD=12345678 -v `pwd`:/data -d mysql/mysql-server
* sudo docker ps
* sudo docker exec -it <container-name> mysql -u root -p
* create database titanic_data;
* use titanic_data;
* TODO -  LOAD DATA INFILE '/data/train.csv' INTO train;


## Notes

At the moment, there is only a Python script and the compose file uses an image named db-exemplar:

* docker build --rm -t db-exemplar .
* docker stack deploy -c compose-python-mysql.yml <stack-name>


## Notes for running the mysql-client on the database container

* 