FROM mysql:8.0

FROM mysql:8.0

ENV MYSQL_DATABASE=rickstoredb \
    MYSQL_USER=${DB_USERNAME} \
    MYSQL_PASSWORD=${DB_PASSWORD} \
    MYSQL_ROOT_PASSWORD=rootpassword


COPY rickstoredb-dump.sql /docker-entrypoint-initdb.d/


EXPOSE 3306

# Start the MySQL server
CMD ["mysqld"]