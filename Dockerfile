FROM alpine
RUN apk add --no-cache bash && \
    #apk update && \
    #apk upgrade && \
    apk add python3 python && \
    pip3 install sqlalchemy mutagen phue && \
    apk add build-base python3-dev nmap libffi-dev openssl-dev py-requests && \
    pip3 install netdisco psutil && \
    pip3 install --upgrade homeassistant && \
    mkdir -p /config && \
    
ENTRYPOINT /usr/bin/hass -c /config



