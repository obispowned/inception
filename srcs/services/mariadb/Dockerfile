FROM debian:buster

    #Actualizacion e instalacion de utilidades
RUN apt-get update && apt-get upgrade -y
RUN apt-get install apt-utils -y
RUN apt-get -y vim

    #Instalacion mariaDB
RUN apt-get install -y mariadb-server
COPY ./mdb-config/mdb.conf /etc/mysql/mariadb.config.d/
COPY ./mdb-config/init.sql /tools/

RUN service mysql start