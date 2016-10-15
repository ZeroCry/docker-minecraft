FROM anapsix/alpine-java:8
MAINTAINER cliffrowley@gmail.com

RUN apk --update add curl

RUN mkdir -p /minecraft/data && \
  curl -o /minecraft/minecraft_server.jar https://launcher.mojang.com/mc/game/1.9.4/server/edbb7b1758af33d365bf835eb9d13de005b1e274/server.jar

WORKDIR /minecraft/data

EXPOSE 25565

VOLUME /minecraft/data

CMD ["java", "-Xmx1024M", "-Xms1024M", "-jar", "../minecraft_server.jar", "nogui"]
