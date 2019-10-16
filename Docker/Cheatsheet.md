### Docker
```sh
## List Docker CLI commands
docker
docker container --help

## Display Docker version and info
docker --version
docker version
docker info

## Build a docker image in a Dockerfile in the current directory
## with tag name friendlyhello
docker build --tag=friendlyhello .

## Execute Docker image
docker run hello-world

## List Docker images
docker image ls

## List Docker containers (running, all, all in quiet mode)
docker container ls
docker container ls --all
docker container ls -aq

## List Images as well
docker image ls

## Pull an image
docker pull xxx

## List all running instances
docker ps -a

## Remove all containers and images

## List all running containers (only IDs)
docker ps -aq

## Stop all running containers
docker stop $(docker ps -aq)

## Remove all containers
docker rm $(docker ps -aq)

## Remove all images
docker rmi $(docker images -q)

```
[Simple Getting Started](https://stackify.com/docker-tutorial/)

If you have a docker-compose.yml you can use [docker-compose](https://docs.docker.com/compose/install/) instead
```
docker-compose up
```