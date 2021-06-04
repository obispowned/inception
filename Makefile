all:	 run

up:
	docker-compose -f ./srcs/docker-compose.yml up -d
down:
	docker-compose -f ./srcs/docker-compose.yml down
start:
	docker-compose -f ./srcs/docker-compose.yml start
stop:
	docker-compose -f ./srcs/docker-compose.yml stop
del_con:
	sudo docker stop $(docker ps -a -q)
	sudo docker rm -f $(docker ps -a -q)
del_img:
	docker rmi -f $(docker images -a -q)
re: all

.PHONY: all up down start stop re

