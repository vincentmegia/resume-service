FROM openjdk:17-jdk-slim-buster
WORKDIR /app
COPY app/build/lib/* build/lib/
COPY app/build/libs/resume-service-1.0.0-SNAPSHOT.jar build/

WORKDIR /app/build
ENTRYPOINT ["java","-jar","/resume-service-1.0.0-SNAPSHOT.jar"]