FROM  stackbrew/debian:wheezy
RUN apt-get update
RUN apt-get install redis-server -y --force-yes
EXPOSE      6379
ENTRYPOINT  ["/usr/bin/redis-server"]
