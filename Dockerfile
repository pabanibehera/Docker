# Use an Official OpenJDK runtime as a parent image
From openjdk:21.0.12.1-jdk-slim
#Set the working directory inside the container
WORKDIR /app
#copy the current directory contents into the container at /app
COPY . .
#Compile the java program
RUN javac sample.java
#Command to run the program
CMD ["java","sample"]
