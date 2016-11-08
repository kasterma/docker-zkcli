FROM anapsix/alpine-java:8

RUN mkdir /var/zookeeper
ADD zookeeper-3.4.9.tar.gz /var/zookeeper/
WORKDIR /var/zookeeper/zookeeper-3.4.9

ENTRYPOINT ["bin/zkCli.sh"]
