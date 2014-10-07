FROM dockerimages/docker-nave
ADD . /ircanywhere
NODE_PATH="/usr/lib/node_modules:/usr/local/lib/node_modules:/.nave/installed/0.10.32/node_modules:$NODE_PATH"
RUN nave use 0.10.32 npm install -g gulp
RUN nave use 0.10.32 /ircanywhere/install.js
