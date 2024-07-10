# Use a base Java image from AdoptOpenJDK that supports Java 17
FROM openjdk:17-oracle

# Set the working directory inside the container
WORKDIR /app

# Copy the Java source code into the container
COPY HelloWorld.java /app

# Compile Java source code
RUN javac HelloWorld.java

# Expose port 8080
EXPOSE 8080

# Command to run the Java program (HTTP server)
CMD ["java", "HelloWorld"]