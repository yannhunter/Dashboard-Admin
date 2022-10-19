FROM ubuntu
MAINTAINER yann_eko (ekongue@gmail.com)
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y nginx git
EXPOSE 80
#ADD Dashboard-Admin/ /var/www/html/
RUN rm -Rf /var/www/html/*
RUN git clone https://github.com/yannhunter/Dashboard-Admin.git /var/www/html
ENTRYPOINT ["/usr/sbin/nginx","-g","daemon off;"]
