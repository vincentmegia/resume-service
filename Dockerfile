FROM gradle:7.6.0-jdk17-alpine AS build
COPY --chown=gradle:gradle . /home/gradle/src
WORKDIR /home/gradle/src
RUN gradle build --no-daemon

FROM openjdk:17-jdk-slim-buster
COPY build/libs/* .
ENTRYPOINT ["java","-jar","/resume-service-1.0.0-SNAPSHOT.jar"]