FROM alpine

RUN apk update && apk add --no-cache git nodejs && \
    git clone https://github.com/ADVANTECH-Corp/APIGateway.git /home/adv/api_gw && \
    git clone --branch v0.0.5 https://github.com/ivan0124/docker_alpine_api_gw.git /home/adv/script &&\
    cp /home/adv/script/start.sh /usr/local/bin/. && \
    mkdir /home/adv/APIGateway && mkdir /home/adv/wsn_setting && \
    apk del git && rm -rf /tmp/* /var/cache/apk/*
    
VOLUME ["/home/adv/APIGateway"]
VOLUME ["/home/adv/wsn_setting"]

EXPOSE 3000

WORKDIR /home/adv
ENTRYPOINT ["start.sh"]
