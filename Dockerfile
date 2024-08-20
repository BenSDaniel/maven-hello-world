FROM openjdk:8-jdk-alpine
WORKDIR /workspace
EXPOSE 3000
# username: "bendaniel", userid: 8080
RUN useradd -ms /bin/bash bendaniel
# change to non root
USER bendaniel
ENTRYPOINT ["java","-jar","app.jar"]
