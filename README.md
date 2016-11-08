# Docker testing tools

Test everything is working by starting up a container with its entrypoint
set to bash

  docker run -d --entrypoint=bash -ti kasterma/zkcli

Start a zookeeper server in this container using

  bin/zkServer.sh start conf/zoo_sample.cfg

and get its ip by using

  ifconfig

Exit the container but keep it running CTRL-p CTRL-q.

Now run (where <ip> is what you saw in ifconfig above)

  docker run -ti kasterma/zkcli -server <ip>:2181
