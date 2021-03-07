FROM tomcat:9.0

WORKDIR /usr/local/tomcat/bin/

COPY ./target/WebAppCal-0.1.4.war /usr/local/tomcat/webapps/

EXPOSE 8080

CMD ["catalina.sh", "run"]

