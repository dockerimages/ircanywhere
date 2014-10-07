FROM dockerimages/docker-nave
ADD . /ircanywhere
RUN /ircanywhere/install.sh
