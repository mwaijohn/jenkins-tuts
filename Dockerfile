FROM openjdk:11
VOLUME /tmp
RUN mkdir -p /usr/share/mtls
COPY mtls/truststore.jks /usr/share
COPY mtls/keystore.p12 /usr/share
ADD target/Queue-Implementation-0.0.1-queue.jar Queue-Implementation-0.0.1-queue.jar
EXPOSE 8082
ENTRYPOINT ["java","-jar","Queue-Implementation-0.0.1-queue.jar","--spring.profiles.active=prod"]