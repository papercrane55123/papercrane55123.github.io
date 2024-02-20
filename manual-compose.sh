#!/bin/bash

# var


# rm & rmi
sudo docker stop $(sudo docker ps -a -q)
sudo docker rm $(sudo docker ps -a -q)
sudo docker rmi $(sudo docker images -q)
# q는 아이디만 리스트로 주는 옵션

figlet build
sudo docker build -t blog-a -f docker/blog-a/Dockerfile docker/blog-a 
sudo docker build -t blog-b -f docker/blog-a/Dockerfile docker/blog-b
sudo docker build -t lb -f docker/lb/Dockerfile docker/lb

# docker create network
sudo docker network create blog-lb

# docker run 
figlet run
sudo docker run -d -p 8881:80 --name blog-a blog-a
sudo docker run -d -p 8882:80 --name blog-b blog-b 
sudo docker run -d -p 8888:80 --network blog-lb --name lb lb

# docker connect network
figlet network
sudo docker network connect blog-lb blog-a
sudo docker network connect blog-lb blog-b
sudo docker network connect blog-lb lb

# status
figlet ps
sudo docker ps
figlet images
sudo docker images
figlet network inspect
sudo docker network inspect blog-lb
sl -aF
