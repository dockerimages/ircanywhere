FROM dockerimages/docker-nave
ADD . /ircanywhere
ENV NODE_PATH /usr/lib/node_modules:/usr/local/lib/node_modules:/.nave/installed/0.8.28/node_modules:$NODE_PATH
RUN ls /.nave/installed/0.8.28/bin
WORKDIR /ircanywhere
RUN nave use 0.8.28 npm install -g gulp
RUN nave use 0.8.28 npm install
RUN nave use 0.8.28 gulp
RUN apt-get install -yq mongodb
RUN mv config.e* config.js
