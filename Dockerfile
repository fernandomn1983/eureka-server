# Building
FROM maven:3-eclipse-temurin-21 AS build

LABEL FULL_NAME="Fernando Murillo Noya"
LABEL EMAIL_MAINTAINER="fernando.murillo.noya@gmail.com"
LABEL MICROSERVICE="Eureka Server"
LABEL COURSE_WORK_GROUP="Grupo 1"

WORKDIR /workspace

COPY pom.xml ./
COPY src ./src

RUN --mount=type=cache,target=/root/.m2 mvn clean package

# Running
FROM eclipse-temurin:21-alpine

WORKDIR /app

ARG JAR_FILE=target/*.jar

COPY --from=build /workspace/${JAR_FILE} /app/app.jar

EXPOSE 8761

ENTRYPOINT ["java", "-jar", "/app/app.jar"]