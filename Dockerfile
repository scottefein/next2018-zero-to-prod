FROM maven:3.5-jdk-8-alpine as builder
COPY . /usr/src/app
WORKDIR /usr/src/app
RUN ["mvn", "package"]

FROM openjdk:8-jre-alpine3.7
WORKDIR /usr/src/myapp
COPY --from=builder /usr/src/app/spring-petclinic-2.0.0.jar app.jar
CMD ["java", "-jar", "app.jar"]