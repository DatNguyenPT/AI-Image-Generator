FROM maven:3.9-amazoncorretto-17 AS build

WORKDIR /ImageGenerator

COPY pom.xml .
COPY src ./src

RUN mvn clean package -DskipTests

FROM eclipse-temurin:17-jdk-jammy
WORKDIR /ImageGenerator
COPY --from=build /ImageGenerator/target/*.jar app.jar
EXPOSE 8081
ENTRYPOINT ["java", "-jar", "app.jar"]