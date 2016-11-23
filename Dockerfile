FROM anapsix/alpine-java:8
MAINTAINER cliffrowley@gmail.com

RUN apk --update add curl

RUN mkdir -p /minecraft/data && \
  curl -o /minecraft/minecraft_server.jar https://launcher.mojang.com/mc/game/1.11/server/48820c84cb1ed502cb5b2fe23b8153d5e4fa61c0/server.jar

WORKDIR /minecraft/data

EXPOSE 25565

VOLUME /minecraft/data

CMD ["java", "-Xmx1024M", "-Xms1024M", "-jar", "../minecraft_server.jar", "nogui"]
