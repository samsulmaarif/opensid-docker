### docker-opensid-apache-mysql

[![No Maintenance Intended](http://unmaintained.tech/badge.svg)](http://unmaintained.tech/)

A Dockerfile that installs and runs the latest OpenSID.

## Installation

```
git clone https://github.com/samsulmaarif/docker-opensid
cd docker-opensid/opensid-mysql
docker build -t opensid .
```

## Usage

Pull it first :

```
docker pull samsulmaarif/opensid-aio
```

To spawn a new instance of OpenSID:

```
docker run -d -P --name opensid -p 8080:80 samsulmaarif/opensid-aio
```

You can visit the following URL in a browser to get started:

```
http://your-ip:8080 
```

## Credits

This is a reductionist take on [J. Auer](https://github.com/jda/)'s docker-moodle Dockerfile.


