FROM debian:buster

    #Actualizacion e instalacion de utilidades
RUN apt-get update && apt-get upgrade -y
RUN apt-get install apt-utils -y

    #Instalacion mariaDB
RUN apt-get install -y mariadb-server
COPY ./conf/mdb.conf /etc/mysql/mariadb.config.d/
COPY ./conf/init.sql /tools/

RUN service mysql start
