
#2-stage build
#building a jar file

FROM maven:3.6.3-jdk-8 AS build
WORKDIR /Devworkspace/devopsproject
COPY . /Devworkspace/devopsproject
RUN mvn -f /Devworkspace/devopsproject/pom.xml clean package

#create an image

FROM openjdk:8-jdk-alpine
EXPOSE 5000
COPY --from=build  /Devworkspace/devopsproject/target/devopsproject devopsproject.jar
ENTRYPOINT ["java -jar /devopsproject.jar"]

