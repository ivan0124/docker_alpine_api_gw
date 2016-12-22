FROM alpine

RUN apk update && apk add --no-cache git nodejs && \
    git clone https://github.com/ADVANTECH-Corp/APIGateway.git /home/adv/api_gw && \
    cp /home/adv/api_gw/script/init_wsn_setting.sh /usr/local/bin/. && \
    mkdir /home/adv/wsn_setting && \
    apk del git && rm -rf /tmp/* /var/cache/apk/*
    
VOLUME ["/home/adv/APIGateway"]
VOLUME ["/home/adv/wsn_setting"]

# set up adv as sudo
WORKDIR /home/adv
#ENTRYPOINT ["init_wsn_setting.sh"]
