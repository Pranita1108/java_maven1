FROM tomcat:11.0.22
EXPOSE 8080
COPY target/javamaven-webapp.war  /usr/local/tomcat/webapps/
