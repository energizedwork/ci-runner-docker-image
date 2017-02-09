FROM docker:1.12.3-dind

RUN apk add --update \
    openjdk8=8.111.14-r0 \
    nodejs=6.7.0-r0 \
    bash \
    libstdc++

ENV JAVA_HOME /usr/lib/jvm/java-1.8-openjdk
