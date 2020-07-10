FROM ubuntu

RUN apt-get -y update && apt-get install -y nginx 

RUN service nginx start
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]

EXPOSE 80

