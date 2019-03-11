FROM node:slim
MAINTAINER Josue Meza
RUN mkdir /app
WORKDIR /app
COPY ./app /app
RUN apt-get -y update && \
    apt-get install -y git && \
    npm install -g @vue/cli && \
    sed -i 's/subscriptionsPath/host: "0.0.0.0", subscriptionsPath/' /usr/local/lib/node_modules/@vue/cli/lib/ui.js && \
    npm install -g @vue/cli-service-global