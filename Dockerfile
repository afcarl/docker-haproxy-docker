FROM dockerimages/ubuntu-core:14.04
MAINTAINER Frank Lemanschik @ Direkt SPEED Europe <frank@github.dspeed.eu> @frank-dspeed
RUN apt-get -y update && apt-get -y install haproxy
RUN echo "# Set ENABLED to 1 if you want the init script to start haproxy. \n\
ENABLED=1 \n\
# Add extra flags here. \n\
EXTRAOPTS='-V -d -db -de -m 16'" > /etc/default/haproxy
RUN cat /etc/default/haproxy
ADD ./docker /usr/bin/docker
ADD ./go /sbin/init
RUN chmod +x /sbin/init
CMD ["/sbin/init"]
