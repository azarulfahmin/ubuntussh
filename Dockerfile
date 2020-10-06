FROM ubuntu:18.04

RUN apt-get update && \
    apt-get install -y ssh
    
RUN systemctl ssh start && \
    systemctl ssh enable && \
    service ssh status

EXPOSE 6379
