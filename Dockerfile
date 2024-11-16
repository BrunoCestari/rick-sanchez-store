FROM openjdk:17-jdk-slim

RUN apt-get update && apt-get install -y maven

WORKDIR /app

COPY . /app

RUN ./mvnw clean package -DskipTests

# Expose the port your app will run on
EXPOSE 8080

# Run the application
CMD ["java", "-jar", "target/rick-sanchez-store-0.0.1-SNAPSHOT.jar"]

