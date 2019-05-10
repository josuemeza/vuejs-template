FROM node:alpine
MAINTAINER Josue Meza <contacto@josuemeza.com>
RUN mkdir /app
WORKDIR /app
COPY ./app /app
RUN apk update && apk upgrade && \
    apk add --no-cache bash git && \
    npm install -g @vue/cli && \
    sed -i 's/subscriptionsPath/host: "0.0.0.0", subscriptionsPath/' /usr/local/lib/node_modules/@vue/cli/lib/ui.js && \
    npm install -g @vue/cli-service-global