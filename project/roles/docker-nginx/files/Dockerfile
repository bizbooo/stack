FROM  stackbrew/debian:wheezy
# Install nginx
RUN apt-get install nginx -y --force-yes
# Run nginx process in foreground
RUN echo "daemon off;" >> /etc/nginx/nginx.conf
# Expose nginx port
EXPOSE 80
ENTRYPOINT ["/usr/sbin/nginx", "-c", "/etc/nginx/nginx.conf"]
