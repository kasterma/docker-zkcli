build:
	if [! -e zookeeper-3.4.9.tar.gz]; then curl --remote-name http://apache.mirrors.pair.com/zookeeper/zookeeper-3.4.9/zookeeper-3.4.9.tar.gz; fi;
	docker build -t kasterma/zkcli .
