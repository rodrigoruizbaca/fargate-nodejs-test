FROM alpine:3.7
WORKDIR /usr/local/src/
RUN apk add nodejs && apk add git
RUN git clone https://github.com/rodrigoruizbaca/fargate-nodejs-test.git
CMD node fargate-nodejs-test/index.js