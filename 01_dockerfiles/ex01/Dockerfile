FROM debian:latest

ENV TSV=3.2.0
ENV TS3SERVER_LICENSE=accept

RUN apt-get -y update && \
	apt-get -y install bzip2 wget && \
	wget http://dl.4players.de/ts/releases/${TSV}/teamspeak3-server_linux_amd64-${TSV}.tar.bz2 && \
	tar -jxf teamspeak3-server_linux_amd64-$TSV.tar.bz2

EXPOSE 9987/udp
EXPOSE 30033
EXPOSE 10011

ENTRYPOINT ["./teamspeak3-server_linux_amd64/ts3server_minimal_runscript.sh"]

# docker build -t ex01 .
# docker run -it --rm -p 9987:9987/udp -p 10011:10011 -p 30033:30033 ex01
#
# launch up-to-date version of TeamSpeak 3 Client
# Command-S to connect to server
# 192.168.99.100:9987
# (enter 40 character privilege key / token)
