FROM maven:3.6.0-jdk-11-slim AS build

# Copy pom.xml to the image
COPY pom.xml /home/app/pom.xml
RUN mvn -f /home/app/pom.xml verify clean --fail-never

# Copy the source code
COPY src /home/app/src
RUN mvn -f /home/app/pom.xml package

# Install Tomcat
FROM tomcat:9.0.72-jdk17
# Copy source files to tomcat folder structure
COPY --from=build /home/app/target/BookingCoffeeTable-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/

EXPOSE 8080