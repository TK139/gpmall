FROM centos:centos7.5.1804
MAINTAINER TK
RUN yum install -y java-1.8.0-openjdk java-1.8.0-openjdk-devel
RUN mv /etc/yum.repos.d/* /media
COPY local.repo /etc/yum.repos.d/local.repo
COPY dist/ /root/nginx/dist/
RUN yum install nginx -y && \
rm -rf /usr/share/nginx/html/* && \
cp -rvf /root/nginx/dist/* /usr/share/nginx/html/ && \
sed -i "12ilocation /user{\\n    \
proxy_pass http://127.0.0.1:8082;\\n\
}\\n \
location /shopping{\\n    \
proxy_pass http://127.0.0.1:8081;\\n\
}\\n \
location /cashier{\\n     \
proxy_pass http://127.0.0.1:8083;\\n\
}\\n" /etc/nginx/conf.d/default.conf
COPY jar.sh /root/nginx/jar.sh
COPY jar/* /root/nginx/jar/
WORKDIR /root/nginx/
RUN chmod +x /root/nginx/jar.sh
EXPOSE 80 443 8081 8082 8083
CMD ["nginx","-g","daemon off;"]
 
