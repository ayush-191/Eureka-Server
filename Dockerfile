# # # BASE IMAGE IS OPENJDK 23 AND THE APPLICATION WILL RUN ON JAVA 23
# # FROM openjdk:23
# #
# #
# # # jar file is present inside target file and * shows we want any jar file
# # # this jar file will be used
# # ARG JAR_FILE=target/*.jar
# #
# #
# # # Now copy JAR_FILE(source) to serviceregistry.jar (destination)
# # # copy jar file inside image
# # COPY ${JAR_FILE} serviceregistry.jar
# #
# #
# # # run jar file while starting container
# #
# # # to start/run the jar file We need to pass java-jar and name of the jar and this command will run when container starts.
# #
# # # which command will run when container starts
# # # Whenever we want to give any command at the time of starting container that last command command will be considered as entry-point.
# # # While starting container entry-point is used
# # # when the container starts java,-jar and serviceregistry.jar will be called
# # ENTRYPOINT ["java","-jar","/serviceregistry.jar"]
# #
# #
# # # After starting container now we need to expose the port so that host system can access that port.
# #
# # EXPOSE 8761
# # # To run any-other commands we can use cmd command that will run while building image.
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
# # Use OpenJDK 23 as the base image to run Java 23 applications
# FROM openjdk:23
#
# # Define a build-time variable pointing to the JAR file inside the 'target' directory
# ARG JAR_FILE=target/*.jar
#
# # Copy the JAR file from the build context to the image and rename it to 'serviceregistry.jar'
# COPY ${JAR_FILE} serviceregistry.jar
#
# # Define the command to run when the container starts
# # This will execute: java -jar /serviceregistry.jar
# ENTRYPOINT ["java", "-jar", "/serviceregistry.jar"]
#
# # Expose port 8761 to allow access from the host machine
# EXPOSE 8761
#
#
#
#
#
#
#
#
#
#
#
#
