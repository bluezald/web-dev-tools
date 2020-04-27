# Docker
- Docker is a system to create images which can then be run as containers. You can think of docker images as super lightweight Virtual Machines that can be run on many platforms (in this image containers are running VMs). The awesomeness of all this is that once you build a docker image and run it somewhere you will get the same thing running everywhere. Once we manage to build a Docker image locally that we can run as a container successfully we know that it will also run on AWS, GCP, Portainer or whatever else your company might be using.

>Docker solves the infamous “it works on my machine” problem. Containers run the same wherever you start them!

- Containerization is an approach of running applications on an OS such that the application is isolated from the rest of the system.
- Docker is what enables us to run, create and manage containers on a single operating system.

## Dockerizing
- Dockerizing an application is the process of converting an application to run within a Docker container.

```
docker build -f Naive-Dockerfile -t docker-spa .
docker run -p 8888:80 docker-spa
```
- Above we first create the Docker image using Docker build. Using the -f Flag we tell Docker which “Dockerfile” to use, which files holdes the configuration to build our image. The -t flag “tags” our Docker image. It gives it a name we can use to run it.

```
docker rmi -f docker-spa
```
- Lets clean up after ourselves using the Docker rmi command and -f forcing it to remove our created image.
- Note the **docker-spa** is the container name

## Demo
- In sample1 directory, make sure to run ```npm i``` before starting it.

# Container Orchestration
- Deploying and scaling containers

## Kubernetes
-  automate scaling and management of containerized applications

- References:
    - http://jasonwilder.com/blog/2014/10/13/a-simple-way-to-dockerize-applications/
    - https://github.com/jwilder/dockerize
    - https://itnext.io/dockerizing-modern-web-apps-cd9667eebf44

