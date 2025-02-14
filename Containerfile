FROM registry.access.redhat.com/ubi8/openjdk-21@sha256:3cfa96520aadc68fbde8b7393d6b49216d82d61f6bbdf63c8576b0ca4a0b7ea9
LABEL MAINTAINER=sefaz-rj
VOLUME /tmp
ARG WORK_DIR="/usr/src/app"
WORKDIR ${WORK_DIR}
COPY . ${WORK_DIR}

USER 0

USER 185

EXPOSE 8080

CMD ["java", "-jar", "target/quarkus-app/quarkus-run.jar"]