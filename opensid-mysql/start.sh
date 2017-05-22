#!/bin/bash
set -e

chown -R mysql:mysql /var/lib/mysql
mysql_install_db --user mysql > /dev/null

MYSQL_ROOT_PASSWORD=opensid
MYSQL_DATABASE=opensid
MYSQL_USER=opensid
MYSQL_PASSWORD=opensid


tfile=`mktemp`
if [[ ! -f "$tfile" ]]; then
    return 1
fi

cat << EOF > $tfile
USE mysql;
FLUSH PRIVILEGES;
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' WITH GRANT OPTION;
UPDATE user SET password=PASSWORD("$MYSQL_ROOT_PASSWORD") WHERE user='root';
CREATE DATABASE IF NOT EXISTS \`$MYSQL_DATABASE\` CHARACTER SET utf8 COLLATE utf8_general_ci;
GRANT ALL ON \`$MYSQL_DATABASE\`.* to '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';
EOF

/usr/sbin/mysqld --bootstrap --verbose=0 < $tfile
rm -f $tfile

exec /usr/sbin/mysqld
