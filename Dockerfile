FROM maven:3.5.2-jdk-8
WORKDIR /usr/src/java-code
COPY . /usr/src/java-code/
RUN mvn install
RUN mvn package
 
WORKDIR /usr/src/java-app
RUN cp /usr/src/java-code/target/spring-petclinic-2.0.0.jar app.jar
EXPOSE 8080
CMD ["java", "-jar", "app.jar"]