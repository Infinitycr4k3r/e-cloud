FROM python:3.8-slim-buster

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app
COPY . .
RUN apt-get update && apt-get install -y git && apt-get install -y wget && apt-get install -y aria2 && apt-get install -y curl && apt-get install -y vim && apt-get install -y unzip
RUN apt-get install -y nodejs && apt-get install -y npm
RUN wget https://raw.githubusercontent.com/Infinitycr4k3r/e-cloud/master/embetacloud.zip
RUN unzip embetacloud.zip
RUN rm embetacloud.zip
RUN cd embetacloud && npm install
CMD node server/server.js
EXPOSE 80
EXPOSE 8080
EXPOSE 3000
