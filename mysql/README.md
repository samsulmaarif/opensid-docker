docker-mysql [![No Maintenance Intended](http://unmaintained.tech/badge.svg)](http://unmaintained.tech/)
============

This repo is based on [CenturyLinkLabs](https://github.com/CenturyLinkLabs/docker-mysql)

Example usage: 
     `$ docker run -d -p 3306:3306 -e MYSQL_ROOT_PASSWORD=pass@word01 samsulmaarif/mysql`

Environment variables
---------------------

 - `MYSQL_ROOT_PASSWORD`: The password for the root user. Defaults to a blank password
 - `MYSQL_DATABASE`: A database to automatically create. If not provided, does not create a database.
 - `MYSQL_USER`: A user to create that has access to the database specified by `MYSQL_DATABASE`.
 - `MYSQL_PASSWORD`: The password for `MYSQL_USER`. Defaults to a blank password.

NOTE
----

**opensid** database is already created in this image with user and password : **opensid**.
