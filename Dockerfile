FROM adoptopenjdk/openjdk11:jdk-11.0.2.9-slim
WORKDIR /src
ENV PORT 8081
EXPOSE 8081
COPY target/test-1.jar app.jar
ENTRYPOINT ["java", "-jar", "/app.jar"]
