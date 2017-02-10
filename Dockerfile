FROM docker:1.12.3-dind

RUN apk add --update \
    openjdk8=8.111.14-r0 \
    chromium=53.0.2785.92-r2 \
    git \
    xvfb \
    nodejs=6.7.0-r0 \
    dbus \
    udev \
    openrc \
    bash \
    libstdc++

ENV JAVA_HOME /usr/lib/jvm/java-1.8-openjdk
