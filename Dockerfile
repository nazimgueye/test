#FROM openjdk:8-jdk-alpine
##WORKDIR /src
#ENV PORT 8081
#EXPOSE 8081
#COPY target/test-1.jar app.jar
#ENTRYPOINT ["java", "-jar", "/app.jar"]
FROM openjdk:21
VOLUME /tmp
WORKDIR /app
EXPOSE 8083
RUN mvn clean install
ARG JAR_FILE=target/test-1.jar
ADD ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
