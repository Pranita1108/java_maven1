# Step 1: Use a specific version of tomcat as a base image
FROM Apache Tomcat/10.1.20

# Expose Tomcat port to access the application 
EXPOSE 8080

#copy the WAR file from the target directory of your maven project to the tomcat webpage directory 
COPY target/java-maven-webapp-1.0-SNAPSHOT.war /user/local/tomcat/webapps/
