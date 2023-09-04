# Official MySQL image
FROM mysql:latest

# Set the environment variables 
ENV MYSQL_ROOT_PASSWORD=password
ENV MYSQL_DATABASE=sakila

# Sakila database dump and initialization script into the container 
COPY sakila-dump.sql /docker-entrypoint-initdb.d/

# Expose port 3306 for MySQL
EXPOSE 3306