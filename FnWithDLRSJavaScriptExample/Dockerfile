#FROM fnproject/node:dev as build-stage
FROM clearlinux/stacks-dlrs-oss:v0.5.0 as build-stage
RUN curl -sL https://deb.nodesource.com/setup_10.x
RUN apt install nodejs
WORKDIR /function
ADD package.json /function/
RUN npm install

FROM fnproject/node
RUN apk add --no-cache imagemagick
WORKDIR /function
ADD . /function/
COPY --from=build-stage /function/node_modules/ /function/node_modules/
ENTRYPOINT ["node", "func.js"]
