#!/bin/bash

# docker-compose up
# docker-compose up -d 
# docker-compose -f _3_docker-compose.yml up 
docker-compose -f _3_docker-compose.yml up -d

# Container Image Bağlan
winpty docker container  exec -it  my_tomcat2 bash

#./deployment2.sh

# GC Log
# cat /usr/local/tomcat/logs/gc.log

# JVM Değerleri
# cd /usr/local/tomcat/bin
# shutdown
# docker contaienr ls -a 
# docker container start my_tomcat2
# docker container inspect my_tomcat2
# docker container stats my_tomcat2
# docker  container top my_tomcat2
# cat /usr/local/tomcat/logs/catalina.log

# grafana
# username: admin
# password: admin

# http://localhost:1111 Tomcat
# http://localhost:3333 Grafana
# http://localhost:4444 Prometheus
# http://localhost:5555 JMX

# curl http://localhost:1111
# curl http://localhost:2222
# curl http://localhost:3333
# curl http://localhost:4444

