FROM alpine
LABEL maintainer="jaeyeol@gmail.com"
RUN apk add --no-cache bash && \
    apk update && \
    apk upgrade && \
    apk add python3 python2 && \
    apk add build-base python3-dev py3-pip linux-headers nmap libffi-dev openssl-dev py-requests bluez-dev zlib-dev libjpeg-turbo-dev libxslt-dev libxml2-dev && \
    pip3 install tzdata sqlalchemy mutagen phue && \
    pip3 install netdisco psutil && \
    pip3 install --upgrade homeassistant && \
    mkdir -p /config
CMD /usr/bin/hass -c /config
