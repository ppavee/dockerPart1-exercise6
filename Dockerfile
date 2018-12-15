FROM ubuntu:16.04

WORKDIR /app
COPY . /app
RUN apt-get update && apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
RUN apt-get install -y nodejs
RUN npm install --no-optional
EXPOSE 8000

ENTRYPOINT npm start
