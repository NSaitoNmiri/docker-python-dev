SERVICE_NAME = "python-dev"

all:
	@echo usage: \"make \{build,up,start,stop,down,exec-bash,ps\}\"

build:
	docker-compose build

up:
	docker-compose up -d

start:
	docker-compose start

stop:
	docker-compose stop

down:
	docker-compose down

exec-bash:
	docker exec -i -t `docker-compose ps -q "$(SERVICE_NAME)"` bash --login

ps:
	docker-compose ps

