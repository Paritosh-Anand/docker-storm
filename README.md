[![Docker Pulls](https://img.shields.io/docker/pulls/kakapari/docker-storm.svg)](https://hub.docker.com/r/kakapari/docker-storm/)
[![Docker Stars](https://img.shields.io/docker/stars/kakapari/docker-storm.svg)](https://hub.docker.com/r/kakapari/docker-storm/) [![](https://images.microbadger.com/badges/image/kakapari/docker-storm.svg)](https://microbadger.com/images/kakapari/docker-storm "Get your own image badge on microbadger.com")

# docker-storm
Storm setup in a single Docker container

* Install 1 Zookeeper instance, version="3.4.8".
* Install Storm nimbus, ui version="0.10.1".
* Install Storm supervisor, default with 2 workers.

start the conatainer using below command:

	docker run -d -p 8080:8080 -p 6627:6627 kakapari/docker-storm
 