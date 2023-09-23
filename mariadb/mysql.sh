#!/bin/bash
mysql_install_db --user=root
mysqld_safe --user=root &
sleep 5
mysqladmin -u root password 000000
echo -e "[mysqld]\n
character-set-server=utf8\n >> /etc/my.cnf
mysql -uroot -p000000 << EOF
grant all privileges on *.* to root@"%" identified by '000000' with grant option;
grant all privileges on *.* to root@localhost identified by '000000' with grant option;
create database gpmall;
use gpmall;
source /root/mariadb/gpmall.sql
EOF
 
