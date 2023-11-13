FROM ubuntu
MAINTAINER angela <qamapacinos@tip.edu.ph>

ARG DEBIAN_FRONTEND = noninteractive

RUN apt update; apt dist-upgrade -y

RUN apt install -y apache2 mariadb-server

ENTRYPOINT apache2ctl -D FOREGROUND
