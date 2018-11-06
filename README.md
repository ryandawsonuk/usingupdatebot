
# Using updatebot

Updatebot demo. First clone this repo.

Next set your credentials in the updatebot-config.sh script, uncomment the commented exports and run the script.

Now test any one of the following commands:

java -jar updatebot-1.1.31.jar push-version --kind maven org.springframework.boot:spring-boot-starter-data-jpa 2.1.0.RELEASE 
java -jar updatebot-1.1.31.jar push-version —-kind docker openjdk:8-jre-alpine 8-jdk
