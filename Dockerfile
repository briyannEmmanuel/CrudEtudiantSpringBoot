FROM openjdk:17-jdk-slim

LABEL maintainer="Juste mbriyann01@gmail.com"

EXPOSE 8080

RUN mkdir -p /app/data

ADD docker/dockervolume.jar dockervolume.jar

ENTRYPOINT ["java", "-jar", "dockervolume.jar"]