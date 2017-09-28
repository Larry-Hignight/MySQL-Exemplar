FROM mysql/mysql-server

MAINTAINER Larry Hignight

RUN mkdir -p /var/lib/mysql-files
COPY data/train.csv /var/lib/mysql-files
