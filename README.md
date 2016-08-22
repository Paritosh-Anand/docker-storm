# docker-storm
Storm setup in a single Docker container

* Install 1 Zookeeper instance, version="3.4.8".
* Install Storm nimbus, ui version="0.10.1".
* Install Storm supervisor, default with 2 workers.

start the conatainer using below command:

	docker run -d -p 8080:8080 -p 6627:6627 kakapari/docker-storm
