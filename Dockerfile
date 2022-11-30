FROM openjdk:17-jdk-slim-buster
COPY build/libs/* .
ENTRYPOINT ["java","-jar","/resume-service-1.0.0-SNAPSHOT.jar"]