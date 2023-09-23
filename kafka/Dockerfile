FROM centos:centos7.5.1804
MAINTAINER TK
RUN yum install java-1.8.0-openjdk java-1.8.0-openjdk-devel -y
COPY zookeeper-3.4.14.tar.gz /root/kafka/zookeeper-3.4.14.tar.gz
COPY kafka_2.11-1.1.1.tgz /root/kafka/kafka_2.11-1.1.1.tgz
RUN tar -zxvf /root/kafka/zookeeper-3.4.14.tar.gz -C /root/ && \
tar -zxvf /root/kafka/kafka_2.11-1.1.1.tgz -C /root/
WORKDIR /root/zookeeper-3.4.14/conf/
RUN mv zoo_sample.cfg zoo.cfg
WORKDIR /root/kafka/
EXPOSE 9092
CMD ["sh","-c","/root/zookeeper-3.4.14/bin/zkServer.sh start && /root/kafka_2.11-1.1.1/bin/kafka-server-start.sh /root/kafka_2.11-1.1.1/config/server.properties"]
 
