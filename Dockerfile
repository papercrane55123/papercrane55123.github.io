FROM ubuntu:22.04

RUN apt update && apt install -y nginx && apt install -y git
RUN apt install cron
RUN git clone https://github.com/papercrane55123/papercrane55123.github.io.git /var/www
COPY pull.sh /var/www/
COPY blog-pull-cronjob myblog:/etc/cron.d/
RUN service cron start

CMD nginx -g 'daemon off;'



