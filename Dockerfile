FROM openjdk:17-jdk-alpine

WORKDIR /app

COPY pom.xml .

COPY src ./src

COPY mvnw .

COPY .mvn .

CMD ["cmod" , "777", "mvnw"]

RUN . /mvnw package 

CMD ["java", "-jar", "target/aulabd2.jar"]