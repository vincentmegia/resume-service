FROM openjdk:17-jdk-slim-buster
WORKDIR /app
COPY app/build/lib/* build/lib/
COPY app/build/libs/* build/

WORKDIR /app/build
ENTRYPOINT ["java","-jar","/resume-service-1.0.0-SNAPSHOT.jar"]