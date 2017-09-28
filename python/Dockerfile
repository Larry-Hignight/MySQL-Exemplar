FROM python:alpine

MAINTAINER Larry Hignight

RUN pip install pip
RUN pip install requests
RUN pip install SQLAlchemy
RUN pip install mysql-connector==2.1.4
#RUN pip install sqlalchemy-migrate

COPY data/train.csv /var/lib/mysql-files/
RUN mkdir -p /src
COPY database-script.py /src
WORKDIR /src
CMD ["sleep", "1800"]
#CMD ["python", "/src/database-script.py"]
