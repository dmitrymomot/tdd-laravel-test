.PHONY: start stop down restart deps php test logs

init:
	make start
	make deps

start:
	cp .env.docker .env
	docker-compose up --build -d nginx

stop:
	docker-compose stop

down:
	docker-compose down --rmi=local
	rm -vf .env

restart:
	make stop
	make start

deps:
	docker-compose exec php composer install

php:
	docker-compose exec php bash

test:
	docker-compose exec -T php ./vendor/bin/phpunit --debug --disallow-todo-tests --colors=always $(wordlist 2,$(words $(MAKECMDGOALS)),$(MAKECMDGOALS))

logs:
	tail -f storage/logs/*
