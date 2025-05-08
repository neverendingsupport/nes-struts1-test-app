FROM tomcat:9.0.104-jre8-temurin-noble

COPY target/struts-example-1.1.0.war /usr/local/tomcat/webapps/example.war

EXPOSE 8080/tcp
