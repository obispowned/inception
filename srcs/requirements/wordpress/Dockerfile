FROM debian:buster

    #Actualizacion e instalacion de utilidades
RUN apt-get update && apt-get upgrade -y
RUN apt-get install apt-utils -y

    #Instalacion y configuracion wordpress
RUN apt-get install -y wordpress
COPY wp-config/ /wordpress/
