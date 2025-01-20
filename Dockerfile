FROM openjdk:21-jdk-slim
VOLUME /tmp
ARG JAR_FILE=target/discovery-service-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} discovery-service.jar
ENTRYPOINT ["java","-jar","/discovery-service.jar"]