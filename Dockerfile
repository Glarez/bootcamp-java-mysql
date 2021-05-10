FROM openjdk:8-jdk-slim
RUN mkdir -p /home/javapp
COPY build/libs/bootcamp-java-mysql-project-1.0-SNAPSHOT.jar /home/javapp
WORKDIR /home/javapp
ENV DB_USER=${DB_USER}
ENV DB_PWD=${DB_PWD}
ENV DB_SERVER=bootcamp-java-mysql_serverName_1
ENV MYSQL_DATABASE=${DB_NAME}
CMD ["java", "-jar", "bootcamp-java-mysql-project-1.0-SNAPSHOT.jar"]