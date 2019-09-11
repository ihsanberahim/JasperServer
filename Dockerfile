FROM ubuntu:18.04

RUN apt-get -y update && apt-get -y upgrade

RUN apt-get -y install openjdk-8-jdk wget
RUN mkdir /usr/local/tomcat
RUN wget https://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.24/bin/apache-tomcat-9.0.24.tar.gz -O /tmp/tomcat.tar.gz
RUN cd /tmp && tar xvfz tomcat.tar.gz
RUN cp -Rv /tmp/apache-tomcat-9.0.24/* /usr/local/tomcat/

EXPOSE 8080

CMD /usr/local/tomcat/bin/catalina.sh run