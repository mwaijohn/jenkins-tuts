FROM openjdk:11
ADD target/jenkins-tuts-0.0.1-SNAPSHOT.jar jenkins-tuts-0.0.1-SNAPSHOT.jar
EXPOSE 8082
ENTRYPOINT ["java","-jar","jenkins-tuts-0.0.1-SNAPSHOT.jar"]