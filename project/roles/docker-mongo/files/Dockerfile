FROM  stackbrew/debian:wheezy
# Add 10gen official apt source to the sources list
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
RUN echo 'deb http://downloads-distro.mongodb.org/repo/debian-sysvinit dist 10gen' | tee /etc/apt/sources.list.d/10gen.list

# Install MongoDB
RUN apt-get update
RUN apt-get install adduser wget mongodb-10gen=2.4.9 wget -y --force-yes

# Create the MongoDB data directory
RUN mkdir -p /data/db

# Expose mongodb port
EXPOSE 27017
EXPOSE 28017

# Launch mongodb
ENTRYPOINT ["usr/bin/mongod"]
