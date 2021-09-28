FROM openjdk:8-jdk-slim
# copy the jar into the container
ARG JAR_FILE=target/*dependencies.jar
COPY ${JAR_FILE} app.jar