# Use Eclipse Temurin Java 17 JDK image
FROM eclipse-temurin:17-jdk

# Set the working directory
WORKDIR /app

# Copy built JAR from local to container
COPY target/finance-manager-0.0.1-SNAPSHOT.jar app.jar

# Expose port
EXPOSE 8081

# Start the app
ENTRYPOINT ["java", "-jar", "app.jar"]