## MySQL-Exemplar

### Databases

The base image contains the following preconfigured databases:

* [Kaggle Titanic training data](https://www.kaggle.com/c/titanic/data) (including a character only version of the data)
* [Kaggle House Sales in King County training data](https://www.kaggle.com/harlfoxem/housesalesprediction)

Scripts to manually populate a database using a SQL script:

* [538 NBA Predictions for the 2017-18 season](https://projects.fivethirtyeight.com/2018-nba-predictions)
  * sudo docker exec -it db bash
  * cd /var/lib/mysql-files
  * mysql nba_2017 -u root -p < load-nba-predictions.sql

And two _to be completed somtime in the future_ databases
* Company database from the Fundamentals of Database Systems textbook
* Library database from the Fundamentals of Database Systems textbook

Initialization scripts and general information about each database can be found in the init directory.

### Docker Usage Information

The Docker image provided in this exemplar is based on the official [MySQL Server](https://hub.docker.com/r/mysql/mysql-server/) Docker image.

#### Building and Running the preconfigured databases

* sudo docker build --rm -t db-exemplar .
* sudo docker run --rm -e MYSQL_ROOT_PASSWORD=12345678 -d db-exemplar
* sudo docker ps             # Note the name of the running container

#### Connecting with the _mysql_ client

* sudo docker exec -it \<container-name\> bash  # Alternatively...
* sudo docker exec -it \<container-name\> mysql -u root -p


### MySQL Clients / Connections

* Python - Under construction

### Useful Links

* MySQL Related
  * [MySQL 5.7 Reference Manual](https://dev.mysql.com/doc/refman/5.7/en/)
  * [SQL Syntax](https://dev.mysql.com/doc/refman/5.7/en/sql-syntax.html)
  * [Executing SQL commands from a text file](https://dev.mysql.com/doc/refman/5.7/en/mysql-batch-commands.html)
* Docker Related
  * [MySQL Server Docker Image](https://hub.docker.com/r/mysql/mysql-server/)
* Python Related
  * [Mastering Markdown](https://guides.github.com/features/mastering-markdown/)
  * [Records - SQL for Humans](https://github.com/kennethreitz/records)
