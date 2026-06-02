FROM tomcat:9.0
EXPOSE 8080
COPY target/javamaven-webapp.war  /usr/local/tomcat/webapps/
