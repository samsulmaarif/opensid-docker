#!/bin/bash 
/usr/bin/mysqld_safe &
sleep 5
mysql -u root -e "CREATE USER opensid;" 
mysql -u root -e "CREATE DATABASE IF NOT EXISTS 'opensid' CHARACTER SET utf8 COLLATE utf8_general_ci;" 
mysql -u root -e "GRANT ALL ON 'opensid'.* to 'opensid'@'%' IDENTIFIED BY 'opensid';" 
mysql -u root opensid < /root/contoh.sql
