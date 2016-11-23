FROM anapsix/alpine-java:8
MAINTAINER cliffrowley@gmail.com

RUN apk --update add curl

RUN mkdir -p /minecraft
COPY scripts/install.sh /minecraft/install.sh
COPY scripts/run.sh /minecraft/run.sh
WORKDIR /minecraft

RUN mkdir -p /minecraft/data
WORKDIR /minecraft/data

EXPOSE 25565

VOLUME /minecraft/data

CMD ["sh", "run.sh"]
