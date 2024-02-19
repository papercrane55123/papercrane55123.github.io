# blog-a
FROM ubuntu:22.04

RUN apt update && apt install -y nginx
RUN apt install -y git
RUN apt install cron
RUN git clone https://github.com/papercrane55123/papercrane55123.github.io.git /var/www/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
