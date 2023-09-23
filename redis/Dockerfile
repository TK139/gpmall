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



docker build -t mall-redis:1.0-f Dockerfile .    ## 构建镜像，名称为mall-redis:1.0,注意.    后续构建镜像操作大同小异，将不再演示
docker run -it -d -p 6380:6379 --name=myredis --restart=always ID  ## 构建容器,让容器在后台运行,端口映射宿主机为6380,容器端口为6379,名字为myredis,开机自启动。本次启动容器为掩饰,后续将使用compose编排。
