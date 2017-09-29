FROM mysql/mysql-server

MAINTAINER Larry Hignight

# Setup users
ENV MYSQL_USER=user
ENV MYSQL_PASSWORD=12345678
ENV MYSQL_ROOT_PASSWORD=12345678

# Init files
COPY init/* /docker-entrypoint-initdb.d/

# Data files
RUN mkdir -p /var/lib/mysql-files/
COPY data/* /var/lib/mysql-files/
WORKDIR /var/lib/mysql-files/
