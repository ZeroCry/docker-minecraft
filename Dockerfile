FROM anapsix/alpine-java:8
MAINTAINER cliffrowley@gmail.com

RUN apk --update add curl

RUN mkdir -p /minecraft
COPY install.sh /minecraft/install.sh
COPY run.sh /minecraft/run.sh
WORKDIR /minecraft
# RUN ./install.sh

RUN mkdir -p /minecraft/data
WORKDIR /minecraft/data

EXPOSE 25565

VOLUME /minecraft/data

CMD ["./run.sh"]

ONBUILD RUN ./install.sh
