FROM debian

WORKDIR /app

RUN apt-get update && \
    apt-get upgrade -y  && \
    apt-get install -y build-essential wget zip curl make git && \
    git clone https://github.com/jellyfin/jellyfin-roku.git /app

ENV ROKU_DEV_TARGET=10.0.0.0 \
    ROKU_DEV_PASSWORD=my-roku-pass

COPY run.sh /run.sh

RUN chmod +x /run.sh

CMD ["bash", "/run.sh"]
