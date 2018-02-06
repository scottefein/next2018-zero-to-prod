FROM openjdk:8-jre-alpine3.7
COPY app.jar /usr/src/myapp/app.jar
WORKDIR /usr/src/myapp
CMD ["java", "-jar", "app.jar"]