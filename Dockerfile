FROM openjdk:17-jdk-slim-buster
MAINTAINER vincentmegia.com

COPY build/libs/resume-service-1.0.0-SNAPSHOT.jar.jar resume-service-1.0.0-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/resume-service-1.0.0-SNAPSHOT.jar"]

