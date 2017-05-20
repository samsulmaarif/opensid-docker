# based on https://github.com/CenturyLinkLabs/docker-mysql
FROM ubuntu:14.04
MAINTAINER Samsul Maarif <hay@samsul.web.id>

# Install packages
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get -y upgrade

# Add image configuration and scripts
RUN apt-get install -y mysql-server
ADD my.cnf /etc/mysql/conf.d/my.cnf 
ADD start.sh /root/start.sh
RUN chmod +x /root/start.sh

VOLUME ["/var/lib/mysql"]
CMD ["/root/start.sh"]

