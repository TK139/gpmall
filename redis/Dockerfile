FROM centos:centos7.5.1804
MAINTAINER TK
RUN mv /etc/yum.repos.d/* /media/
COPY local.repo /etc/yum.repos.d/local.repo
RUN yum install -y redis && \
sed -i 's/bind 127.0.0.1/bind 0.0.0.0/g' /etc/redis.conf && \
sed -i 's/protected-mode yes/protected-mode no/g' /etc/redis.conf
sed -i "s/daemonize no/daemonize yes/g" /etc/redis.cnof
EXPOSE 6379
CMD ["redis-server","/etc/redis.conf"]
