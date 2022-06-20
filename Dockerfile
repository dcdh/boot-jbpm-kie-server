FROM openjdk:8-jdk-alpine
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
COPY settings.xml $HOME/.m2/settings.xml
ENTRYPOINT ["java", "-jar", "/app.jar", "-Dorg.kie.server.controller.user=admin", "-Dorg.kie.server.controller.pwd=admin"]
