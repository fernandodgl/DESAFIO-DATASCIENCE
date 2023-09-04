#!/bin/bash

# URL for the Sakila database
SAKILA_URL="https://downloads.mysql.com/docs/sakila-db.zip"

# Download the Sakila database 
wget $SAKILA_URL -O sakila-db.zip

# Extract the downloaded zip file
unzip sakila-db.zip

# Combine the schema and data into a single SQL file for easier setup with Docker
cat sakila-db/sakila-schema.sql sakila-db/sakila-data.sql > sakila-dump.sql

# Clean up 
rm sakila-db.zip
rm -r sakila-db

echo "Sakila database downloaded and extracted successfully!"
