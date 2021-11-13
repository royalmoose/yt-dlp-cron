FROM alpine:latest

MAINTAINER royalmoose

RUN apk update
RUN apk add bash flock nano
RUN apk add yt-dlp ffmpeg --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community

COPY ./config/crontab.txt ./config/channels.txt ./config/yt-dlp.conf /yt-dlp/

RUN /usr/bin/crontab /yt-dlp/crontab.txt

ENTRYPOINT ["crond", "-f"]
