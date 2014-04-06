#!/bin/bash
java -jar /opt/logstash/bin/logstash-1.3.2-flatjar.jar agent -f /opt/logstash/etc/logstash-syslog.conf

