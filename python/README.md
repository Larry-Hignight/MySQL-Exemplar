# MySQL-Exemplar using Python

## Status

* At present, I'm using _db-exemplar_ as the name of the preconfigured MYSQL database image.
* And _db-python_ to name the python database script image.


## TODO

* Need to fix user permission issues so both the root and user accounts are able to connect to all of the preconfigured databases
* Need to work on the database script(s)


### Misc Notes

To trace the output of a python file use the following command:

python -m trace --trace <filename.py>

For any script that imports a large library, this will lead to an enormous amount of output.