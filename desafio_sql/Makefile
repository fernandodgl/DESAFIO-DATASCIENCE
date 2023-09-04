# Variables
COMPOSE_FILE = docker-compose.yml
# Targets
setup:
	./setup_sakila.sh

start:
	docker-compose -f $(COMPOSE_FILE) up -d

stop:
	docker-compose -f $(COMPOSE_FILE) down

logs:
	docker-compose -f $(COMPOSE_FILE) logs -f

all: setup start