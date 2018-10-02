FROM centos:7
MAINTAINER MARLONP
RUN yum -y update &&\ 
          yum -y install httpd vim
EXPOSE 8080
COPY entrypoint-httpd.sh .
ENTRYPOINT ["/entrypoint-httpd.sh"]
