FROM dockerimages/docker-nave
ADD . /ircanywhere
RUN nave use 0.10.32 && /ircanywhere/install.sh
