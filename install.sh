#/usr/bin/env bash

MC_VERSION=${MC_VERSION:-1.10.2}
curl -o /minecraft/minecraft_server.jar "https://s3.amazonaws.com/Minecraft.Download/versions/$MC_VERSION/minecraft_server.$MC_VERSION.jar"
