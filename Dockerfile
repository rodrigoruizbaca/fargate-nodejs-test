FROM alpine:3.7
WORKDIR /usr/local/src/
RUN apk add nodejs && apk add git
RUN git clone https://github.com/rodrigoruizbaca/fargate-nodejs-test.git
WORKDIR /usr/local/src/fargate-nodejs-test
RUN npm install
CMD node index.js