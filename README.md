# MySQL-Exemplar

## Notes

At the moment, there is only a Python script and the compose file uses an image named db-exemplar:

* docker build --rm -t db-exemplar .
* docker stack deploy -c compose-python-mysql.yml <stack-name>


## Notes for running the mysql-client on the database container

* docker exec -it <db-container> bash
* mysql -u root -p 
* 