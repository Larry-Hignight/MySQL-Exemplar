# MySQL-Exemplar

## Databases

The base image contains the following preconfigured databases:

* The Kaggle Titanic training data (plus a string only version)
* TODO - Housing database
* TODO - Library database from the ??? textbook
 

### Connecting with the _mysql_ client

* sudo docker run --rm -e MYSQL_ROOT_PASSWORD=12345678 -d db-exemplar
* sudo docker ps
* sudo docker exec -it <container-name> bash  # Alternatively... 
* sudo docker exec -it <container-name> mysql -u root -p


## MySQL Clients / Connections

* Python - Under construction
