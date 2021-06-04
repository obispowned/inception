FROM debian:buster

    #Actualizacion e instalacion de utilidades
RUN apt-get update && apt-get upgrade -y
RUN apt-get install apt-utils -y

    #Instalacion Nginx
RUN apt-get install -y nginx

    #Instalacion de protocoloSSL, permiso y acceso
RUN apt-get install -y openssl
RUN openssl genrsa -out /etc/ssl/private/nginx.key 4096
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -subj "/C=SP/ST=Spain/L=Madrid/O=42Madrid/CN=127.0.0.1" -keyout /etc/ssl/private/localhost.key -out /etc/ssl/certs/localhost.crt
RUN chown -R www-data:www-data /var/www/*
RUN chmod -R 775 /var/www/*

    #Agregar configuracion
COPY myconfig.nginx /etc/nginx/sites-available/
COPY index.html /var/www/html/
RUN rm /etc/nginx/sites-enabled/default
RUN ln -s /etc/nginx/sites-available/myconfig.nginx /etc/nginx/sites-enabled/

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]
