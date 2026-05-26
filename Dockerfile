FROM openjdk:21
EXPOSE 8080
ADD target/Devops-project.jar Devops-project.jar 
ENTRYPOINT [ "java","jar","Devops-project" ]

