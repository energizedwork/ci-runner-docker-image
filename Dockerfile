FROM docker:17.09-dind

RUN apk add --update \
    openjdk8=8.131.11-r2 \
    chromium=57.0.2987.133-r0 \
    git \
    xvfb \
    dbus \
    udev \
    openssh-client \
    openrc \
    bash \
    libstdc++ \
    curl \
    ca-certificates \ 
    openssl \
    ncurses \
    coreutils \ 
    python \
    make \
    gcc \
    g++ \
    libgcc \ 
    linux-headers \ 
    grep \
    util-linux \
    binutils \
    tar \
    findutils


ENV NVM_DIR /usr/local/nvm
RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.6/install.sh | bash

ENV NODE_VERSION v8.9.1

RUN /bin/bash -c "source $NVM_DIR/nvm.sh && nvm install -s $NODE_VERSION && nvm use --delete-prefix $NODE_VERSION"

ENV NODE_PATH $NVM_DIR/versions/node/$NODE_VERSION/lib/node_modules
ENV PATH      $NVM_DIR/versions/node/$NODE_VERSION/bin:$PATH

ENV JAVA_HOME /usr/lib/jvm/java-1.8-openjdk

COPY .bashrc /root/.bashrc
 
