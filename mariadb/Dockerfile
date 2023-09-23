FROM centos:centos7.5.1804
MAINTAINER TK
RUN yum install -y mariadb mariadb-server
COPY mysql.sh /root/mariadb/mysql.sh
COPY gpmall.sql /root/mariadb/gpmall.sql
RUN chmod +x /root/mariadb/mysql.sh && \
/bin/bash /root/mariadb/mysql.sh
ENV LC_ALL en_US.UTF-8
EXPOSE 3306
CMD ["mysqld_safe",”--user=root”]
 
