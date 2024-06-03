FROM openjdk:17-jdk-alpine

WORKDIR /app

COPY pom.xml .

COPY src ./src

COPY mvnw .

CMD ["cmod" , "777", "mvnw"]

RUN . /mvnw package 

CMD ["java", "-jar", "target/aulabd2.jar"]