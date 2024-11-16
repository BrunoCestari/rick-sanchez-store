FROM openjdk:17-jdk-slim

COPY ./target/rick-sanchez-store-0.0.1-SNAPSHOT.jar app.jar
COPY public public/

# Expose the port your app will run on
EXPOSE 8080

# Run the application
CMD ["java", "-jar", "app.jar"]

