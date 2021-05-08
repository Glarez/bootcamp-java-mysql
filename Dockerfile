FROM openjdk:8-oraclelinux7
RUN mkdir -p /home/javapp
COPY build/libs/bootcamp-java-mysql-project-1.0-SNAPSHOT.jar /home/javapp
WORKDIR /home/javapp
ENV DB_USER=user
ENV DB_PWD=password
ENV DB_SERVER=
# RUN javac Main.java
CMD ["java -jar", "bootcamp-java-mysql-project-1.0-SNAPSHOT.jar"]