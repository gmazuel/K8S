FROM ubuntu:22.04
MAINTAINER Guillermo Mazuela
RUN apt update && \
    apt upgrade && \
    apt install -y wget htop apache2 --no-install-recommends && \
    rm -rf /var/lib/apt/lists/*
EXPOSE 8080
ENTRYPOINT ["/usr/sbin/apache2ctl", "-D", "FOREGRAUND"]
