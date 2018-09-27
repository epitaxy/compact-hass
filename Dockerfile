FROM alpine:3.6

LABEL maintainer="jaeyeol@gmail.com"

RUN apk update && \
    apk upgrade && \
    apk add python3 && \
    pip3 install sqlalchemy mutagen phue && \
    apk add --update build-base linux-headers python3-dev nodejs nodejs-npm nmap libffi-dev openssl-dev && \
    pip3 install netdisco psutil && \
    pip3 install --upgrade homeassistant && \
    mkdir -p /config && \
    
CMD /usr/bin/hass -c /config



