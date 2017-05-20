# based on https://github.com/CenturyLinkLabs/docker-mysql
FROM ubuntu:14.04
MAINTAINER Samsul Maarif <hay@samsul.web.id>

# Install packages
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get -y upgrade

# Add image configuration and scripts
RUN apt-get install -y mysql-server unzip
ADD my.cnf /etc/mysql/conf.d/my.cnf 
ADD start.sh /root/start.sh
RUN chmod +x /root/start.sh \
	&& wget -O opensid.zip https://github.com/eddieridwan/OpenSID/archive/master.zip \
	&& unzip opensid.zip \
	&& cp OpenSID-master/*.sql /root/contoh.sql \
	&& rm -rf OpenSID-master \
	&& apt-get purge -y unzip

VOLUME ["/var/lib/mysql"]
CMD ["/root/start.sh"]

