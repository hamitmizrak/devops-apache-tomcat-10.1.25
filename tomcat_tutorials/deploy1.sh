#!/bin/bash
# Docker-compose yml calistir
# docker-compose up -d
docker-compose -f _3_docker-compose.yml up -d

# JVM Değerlerini Görmek
docker container top my_tomcat2

# Log (Garbarage Collection) GC
cd /usr/local/tomcat/logs

# Container Image Bağlan
winpty docker container  exec -it  my_tomcat2 bash
# cat /usr/local/tomcat/conf/server.xml

./deploy2.sh

# Başka bir container üzeriden volume bağlanmak
# winpty docker run -it --rm --name volume_container \
# -v tomcat_tomcat-conf://usr/local/tomcat/conf \
# -v tomcat_tomcat-logs://usr/local/tomcat/logs \
# -v tomcat_tomcat-webapps://usr/local/tomcat/webapps \
# my_tomcat2 bash

# cd /usr/local/tomcat/logs/
# ls -al
# cat /usr/local/tomcat/logs/gc.log


# Grafana:
# username: admin
# password: admin


