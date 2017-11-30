echo "Building the database image"
sudo docker build --rm -t db-exemplar .

echo "Starting the database"
sudo docker run --rm -e MYSQL_ROOT_PASSWORD=12345678 --name db -d db-exemplar

echo "Pausing to allow the database to finish starting up"
sleep 10

echo "Attempting to connect to the database"
sudo docker exec -it db mysql -u root -p

# When you need to inspect the data files...
# sudo docker exec -it db bash
# cd /var/lib/mysql-files
