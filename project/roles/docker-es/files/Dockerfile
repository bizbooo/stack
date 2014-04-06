FROM  stackbrew/debian:wheezy

# Install java
# Install wget
RUN apt-get update
RUN apt-get install adduser wget openjdk-7-jre -y --force-yes

## Create root java rep
#RUN mkdir /opt/java7/
#WORKDIR /opt/java7/
## Get java archive
#RUN wget https://s3-eu-west-1.amazonaws.com/binary.sportaculous.com/jdk-7u45-linux-x64.tar.gz
#RUN tar xvzf jdk-7u45-linux-x64.tar.gz
## Update java alternative 
#RUN update-alternatives --install /usr/bin/java java /opt/java7/jdk1.7.0_45/bin/java 1
#RUN update-alternatives --install /usr/bin/javac javac /opt/java7/jdk1.7.0_45/bin/javac 1
#RUN update-alternatives --set java /opt/jdk1.7.0_21/bin/java

# Install ES Server
RUN mkdir /opt/elasticsearch
WORKDIR /opt/elasticsearch/
RUN wget https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-1.1.0.deb --no-check-certificate
RUN dpkg -i elasticsearch-1.1.0.deb

# Install plugin
RUN /usr/share/elasticsearch/bin/plugin -install karmi/elasticsearch-paramedic
RUN /usr/share/elasticsearch/bin/plugin -install polyfractal/elasticsearch-inquisitor
RUN /usr/share/elasticsearch/bin/plugin -install polyfractal/elasticsearch-segmentspy
RUN /usr/share/elasticsearch/bin/plugin -install lukas-vlcek/bigdesk

EXPOSE 9200

# Launch 
ENTRYPOINT ["/usr/share/elasticsearch/bin/elasticsearch"]
