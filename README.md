## MySQL-Exemplar

### Databases

The base image contains the following preconfigured databases:

* [Kaggle Titanic training data](https://www.kaggle.com/c/titanic/data) (including a character only version of the data)
* [Kaggle House Sales in King County training data](https://www.kaggle.com/harlfoxem/housesalesprediction)
* TODO - Company database from the Fundamentals of Database Systems textbook
* TODO - Library database from the Fundamentals of Database Systems textbook
* TODO - 538 NBA Predictions for the 2017-18 season

Initialization scripts and general information about each database can be found in the init directory.

### Docker Usage Information

The Docker image provided in this exemplar is based on the official [MySQL Server](https://hub.docker.com/r/mysql/mysql-server/) Docker image.

#### Building and Running the preconfigured databases

* sudo docker build --rm -t db-exemplar .
* sudo docker run --rm -e MYSQL_ROOT_PASSWORD=12345678 -d db-exemplar
* sudo docker ps             # Note the name of the running container

#### Connecting with the _mysql_ client

* sudo docker exec -it <container-name> bash  # Alternatively... 
* sudo docker exec -it <container-name> mysql -u root -p


### MySQL Clients / Connections

* Python - Under construction
