#FROM openjdk:8-jdk-alpine
##WORKDIR /src
#ENV PORT 8081
#EXPOSE 8081
#COPY target/test-1.jar app.jar
#ENTRYPOINT ["java", "-jar", "/app.jar"]
FROM openjdk:11
VOLUME /tmp
EXPOSE 8080
ARG JAR_FILE=target/test-1.jar
ADD ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
