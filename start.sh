#!/bin/sh

wget https://papermc.io/api/v1/paper/1.15.2/latest/download -O /opt/papermc/paperclip.jar
cd /data
exec /opt/openjdk-13/bin/java -server -Xms${RAM} -Xmx${RAM} -XX:+UnlockExperimentalVMOptions -XX:+UseG1GC -XX:+AlwaysPreTouch -XX:+ParallelRefProcEnabled -XX:+DisableExplicitGC -jar /opt/papermc/paperclip.jar nogui
