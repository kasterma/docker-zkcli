FROM alpine:latest

RUN apk add --update openjdk8 bash

RUN mkdir /var/zookeeper
ADD zookeeper-3.4.9.tar.gz /var/zookeeper/
WORKDIR /var/zookeeper/zookeeper-3.4.9

ENTRYPOINT ["bin/zkCli.sh"]
