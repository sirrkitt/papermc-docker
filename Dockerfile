FROM openjdk:13-alpine
COPY start.sh /start.sh
RUN mkdir -p /opt/papermc/server
RUN chmod +x /start.sh
ENTRYPOINT ["./start.sh"]

VOLUME /opt/papermc/server
EXPOSE 25565/tcp
EXPOSE 25565/udp
