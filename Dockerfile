FROM openjdk:21.0.11
EXPOSE 8080
COPY target/javamaven-webapp.war  /usr/local/tomcat/webapps/
