FROM debian:buster

    #Actualizacion e instalacion de utilidades
RUN apt-get update && apt-get upgrade -y
RUN apt-get install apt-utils -y
RUN apt-get -y vim

    #Instalacion Nginx
RUN apt-get install -y nginx

    #Agregar configuracion
COPY /myconfig.nginx /etc/nginx/sites-available/
COPY /index.html /var/www/html/
RUN rm /etc/nginx/sites-enabled/default
RUN ln -s /etc/nginx/sites-available/myconfig.nginx /etc/nginx/sites-enabled/