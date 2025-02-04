FROM tomcat:8.5.100-jre8-temurin-jammy

COPY target/struts-cookbook-1.3.10.war /usr/local/tomcat/webapps/

EXPOSE 8080/tcp