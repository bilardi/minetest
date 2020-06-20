# Minimal makefile for Minetest server management

.PHONY: help # print this help list
help:
	grep PHONY Makefile | sed 's/.PHONY: /make /' | grep -v grep

.PHONY: clean # remove docker container
clean:
	docker stop minetest-server; docker rm minetest-server

.PHONY: install # install docker container
install: clean
	docker build -f Dockerfile -t minetest:latest --no-cache .; docker run -it --name minetest-server -p 30000:30000/udp -d minetest:latest

.PHONY: stop # stop docker container
stop:
	docker stop minetest-server

.PHONY: start # start docker container
start:
	docker start minetest-server

.PHONY: ip # return docker container ip
ip:
	docker ps -a | grep minetest-server

.PHONY: logs # show logs of the docker container
logs:
	docker logs minetest-server

.PHONY: bash # exec bash in the docker container
bash:
	docker exec -u root -it minetest-server bash