# based on https://github.com/CenturyLinkLabs/docker-mysql
FROM ubuntu:14.04
MAINTAINER Samsul Maarif <hay@samsul.web.id>

# Install packages
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get -y upgrade

# Add image configuration and scripts
RUN apt-get install -y mysql-server unzip wget

ADD my.cnf /etc/mysql/conf.d/my.cnf 
ADD start.sh /root/start.sh

RUN chmod +x /root/start.sh \
	&& wget -O opensid.zip https://github.com/eddieridwan/OpenSID/archive/master.zip \
	&& unzip opensid.zip \
	&& cp OpenSID-master/*.sql /root/contoh.sql \
	&& rm -rf OpenSID-master \
	&& apt-get purge -y unzip wget \
	&& mysql -u root -e "CREATE USER opensid;" \
	&& mysql -u root -e "CREATE DATABASE IF NOT EXISTS 'opensid' CHARACTER SET utf8 COLLATE utf8_general_ci;" \
	&& mysql -u root -e "GRANT ALL ON 'opensid'.* to 'opensid'@'%' IDENTIFIED BY 'opensid';" \
	&& mysql -u root opensid < /root/contoh.sql

VOLUME ["/var/lib/mysql"]

CMD ["/root/start.sh"]
