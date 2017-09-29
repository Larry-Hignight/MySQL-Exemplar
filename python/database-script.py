## -- Example using the MySQL connector -- ##
from mysql.connector import connect
cnx = connect(user='root', password='12345678', host='db')  #, database='titanic_dataset')
cursor = cnx.cursor()

cursor.execute("select 'Hello World'")
[row for row in cursor]
cursor.execute("show databases")
[row for row in cursor]
cursor.execute("use information_schema")
cursor.execute("show tables")
[row for row in cursor]

#cursor.execute("select Name, Sex, Age from train limit 20")
#[row for row in cursor]

cursor.close()
cnx.close()


## -- Example using SQLAlchemy -- ##
# import sqlalchemy
# sqlalchemy.__version__
# 
# from sqlalchemy import create_engine
# engine = create_engine('mysql+mysqlconnector://user:12345678@db/library')
# con = engine.connect()
# 
# # Create tables for users and addresses
# from sqlalchemy import Table, Column, Integer, String, MetaData, ForeignKey
# metadata = MetaData()
# users = Table('users', metadata,
#   Column('id', Integer, primary_key=True),
#   Column('name', String(30)),
#   Column('fullname', String(60)),
# )
# 
# addresses = Table('addresses', metadata,
#   Column('id', Integer, primary_key=True),
#   Column('user_id', None, ForeignKey('users.id')),
#   Column('email_address', String(100), nullable=False)
# )
# 
# metadata.create_all(engine)
# 
# 
# ## -- What's next??? -- ##
# 
# # Insert values for all columns
# ins = users.insert()
# str(ins)
# 
# # Insert values for specific columns
# ins = users.insert().values(name='jack', fullname='Jack Jones')
# str(ins)

# # Why?
# ins.compile().params
# result = con.execute(ins)
# result.inserted_primary_key
# 
# 
# # Select...
# 
# from sqlalchemy.sql import select
# s = select([users])
# result = con.execute(s)
# 
# for row in result:  print(row)

