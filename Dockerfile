FROM ubuntu:18.04
RUN apt update -y
RUN apt install openjdk-8-jdk -y
RUN mkdir /opt/tomcat
WORKDIR /opt/tomcat
ADD  https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.63/bin/apache-tomcat-9.0.63.tar.gz
RUN tar -xzf apache-tomcat-9.0.63.tar.gz 
COPY ./works-with-heroku-1.0.war usr/local/opt/tomcat/webapps/hero.war
EXPOSE 8080
CMD [ "catalina.sh", "run" ]
