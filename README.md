docker-opensid 
=============

[![](https://images.microbadger.com/badges/image/samsulmaarif/opensid.svg)](https://microbadger.com/images/samsulmaarif/opensid "Get your own image badge on microbadger.com") [![No Maintenance Intended](http://unmaintained.tech/badge.svg)](http://unmaintained.tech/)

A Dockerfile that installs and runs the latest OpenSID.

## Installation

```
git clone https://github.com/samsulmaarif/docker-opensid
cd docker-opensid
docker build -t opensid .
```

## Usage

To use this instance, you will need **samsulmaarif/mysql**, pull it first:

```
docker pull samsulmaarif/mysql
```

To spawn a new instance of OpenSID:

```
docker run -d --name ODB -p 3306:3306 -e MYSQL_DATABASE=opensid -e MYSQL_USER=opensid -e MYSQL_PASSWORD=opensid samsulmaarif/mysql
docker run -d -P --name opensid --link ODB:ODB -e OPENSID_URL=http://192.168.43.7:8080 -p 8080:80 samsulmaarif/opensid
```

You can visit the following URL in a browser to get started:

```
http://192.168.43.7:8080 
```

## Credits

This is a reductionist take on [J. Auer](https://github.com/jda/)'s docker-moodle Dockerfile.


