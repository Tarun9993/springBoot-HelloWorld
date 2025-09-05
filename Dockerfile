# Build stage
FROM maven:3.9.6-eclipse-temurin-21 AS build
COPY . .
RUN mvn clean package -DskipTests

# Package stage
FROM eclipse-temurin:21-jdk
COPY --from=build /target/Hello-World-0.0.1-SNAPSHOT.jar Hello-World.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/Hello-World.jar"]
