FROM centos:centos7.5.1804
MAINTAINER TK
RUN yum install -y java-1.8.0-openjdk java-1.8.0-openjdk-devel
COPY zookeeper-3.4.14.tar.gz /root/zookeeper/zookeeper-3.4.14.tar.gz
RUN tar -zxvf /root/zookeeper/zookeeper-3.4.14.tar.gz -C /root/
WORKDIR /root/zookeeper-3.4.14/conf/
RUN mv zoo_sample.cfg zoo.cfg
EXPOSE 2181
CMD ["sh","-c","/root/zookeeper-3.4.14/bin/zkServer.sh start-foreground"] 
 
 
