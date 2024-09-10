# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-alpine

# Set the working directory inside the container
WORKDIR /usr/app

# Copy the jar file to the container
COPY target/springboot-rest-app.jar /usr/app/

# Expose the application port
EXPOSE 8080

# Command to run the Spring Boot application
ENTRYPOINT ["java", "-jar", "springboot-rest-app.jar"]
