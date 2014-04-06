FROM  sportaculous/java7

# Install Logstash Server
RUN mkdir /logstash
RUN mkdir /logstash/etc
RUN mkdir /logstash/bin
RUN mkdir /logstash/pattern
WORKDIR /logstash/bin/
RUN wget https://s3-eu-west-1.amazonaws.com/binary.sportaculous.com/logstash-1.1.13-flatjar.jar --no-check-certificate
ADD logstash-syslog.conf /logstash/etc/logstash-syslog.conf 
WORKDIR /logstash/etc/
RUN sed 's/host_es/'$ELASTIC_PORT_9200_TCP_ADDR'/g' logstash-syslog.conf > logstash-syslog.conf.host
RUN sed 's/port_es/'$ELASTIC_PORT_9200_TCP_PORT'/g' logstash-syslog.conf.host > logstash-syslog.conf
# Expose logstash port
#EXPOSE 9200
EXPOSE 5544

# Launch 
#ENTRYPOINT ["java" ,"-jar", "/logstash/bin/logstash-1.1.13-flatjar.jar", "agent", "-f", "/logstash/etc/logstash-syslog.conf", "-b", "elasticsearch://$ELASTIC_PORT_9200_TCP_ADDR:$ELASTIC_PORT_9200_TCP_PORT"]
#ENTRYPOINT ["java" ,"-jar", "/logstash/bin/logstash-1.1.13-flatjar.jar", "agent", "-f", "/logstash/etc/logstash-syslog.conf"]
ENTRYPOINT ["java" ,"-jar", "/logstash/bin/logstash-1.1.13-flatjar.jar", "agent", "-f", "/logstash/etc/logstash-syslog.conf"]
