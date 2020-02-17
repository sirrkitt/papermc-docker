FROM openjdk:13-alpine
ENV RAM="2G"
COPY start.sh /start.sh
RUN mkdir -p /opt/papermc
RUN chmod +x /start.sh
ENTRYPOINT ["/start.sh"]

VOLUME /data
EXPOSE 25565/tcp
EXPOSE 25565/udp
