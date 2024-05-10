# use a base image
FROM openjdk:8-jre

# set the JAVA_HOME environment variable
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64

# set the working directory
WORKDIR /game

# copy install script to container
COPY .install.sh .

# expose port
EXPOSE 25565

# start server
CMD ["sh", ".install.sh"]
