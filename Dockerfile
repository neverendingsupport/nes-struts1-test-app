FROM tomcat:9.0.102-jdk11

COPY target/struts-examples-1.3.10.war /usr/local/tomcat/webapps/examples.war

EXPOSE 8080/tcp