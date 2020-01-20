FROM python:3.8-slim-buster

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app
COPY . .
RUN pip install xdcc-dl && pip install youtube_dl && pip install -U google-music-scripts && pip install eyeD3
RUN apt-get update && apt-get install -y git && apt-get install -y wget && apt-get install -y aria2 && apt-get install -y ffmpeg && apt-get install -y transmission-cli && apt-get install -y curl && apt-get install -y vim && apt-get install -y unzip && apt-get install -y openssh-server && apt-get install -y screen && apt-get install -y qbittorrent-nox
RUN apt-get install -y nodejs && apt-get install -y npm
RUN curl https://rclone.org/install.sh | bash
RUN wget https://notabug.org/RemixDevs/DeezloaderRemix/archive/master.zip
RUN unzip master.zip
RUN rm master.zip
RUN cd deezloaderremix && npm install
EXPOSE 80
EXPOSE 8080
EXPOSE 3000
