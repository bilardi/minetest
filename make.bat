REM Minimal makefile for Minetest server management
@ECHO OFF
if "%1" == "" goto help

:: make clean # remove docker container
clean:
docker stop minetest-server; docker rm minetest-server

:: make install # install docker container
install: clean
docker build -f Dockerfile -t minetest:latest --no-cache .; docker run -it --name minetest-server -p 30000:30000/udp -d minetest:latest

:: make stop # stop docker container
stop:
docker stop minetest-server

:: make start # start docker container
start:
docker start minetest-server

:: make ip # return docker container ip
ip:
docker ps -a | findstr /s "minetest-server"

:: make logs # show logs of the docker container
logs:
docker logs minetest-server

:: make bash # exec bash in the docker container
bash:
docker exec -u root -it minetest-server bash

:: make help # print this help list
help:
findstr /s "::" make.bat | findstr /v "findstr"