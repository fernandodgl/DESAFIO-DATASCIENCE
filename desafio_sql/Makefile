# Variables
IMAGE_NAME = sakila-mysql-image 
CONTAINER_NAME = sakila_mysql_container

# Targets
setup:
	./setup_sakila.sh

build:
	docker build -t $(IMAGE_NAME) .

run:
	docker run --name $(CONTAINER_NAME) -d -p 3306:3306 $(IMAGE_NAME)

stop:
	docker stop $(CONTAINER_NAME)
	docker rm $(CONTAINER_NAME)

clean:
	docker rmi $(IMAGE_NAME)

all: setup build run