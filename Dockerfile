FROM alpine

RUN apk update && apk add --no-cache git nodejs && \
    git clone https://github.com/ADVANTECH-Corp/APIGateway.git /home/adv/api_gw && \
    cp /home/adv/api_gw/script/init_wsn_setting.sh /usr/local/bin/. && \
    mkdir /home/adv/APIGateway && mkdir /home/adv/wsn_setting && \
    apk del git && rm -rf /tmp/* /var/cache/apk/*
    
VOLUME ["/home/adv/APIGateway"]
VOLUME ["/home/adv/wsn_setting"]

# set up adv as sudo
#WORKDIR /home/adv
#ENTRYPOINT ["init_wsn_setting.sh"]
#copy wsn_setting files

CMD cp -rf /home/adv/api_gw/* /home/adv/APIGateway/ &&\
    cp -rf /home/adv/api_gw/.git /home/adv/APIGateway/ &&\
    cp -rf /home/adv/api_gw/apps/wsn_manage/wsn_setting/* /home/adv/wsn_setting/ &&\
    mkdir -p /home/adv/wsn_setting/device_html &&\
    cd /home/adv/wsn_setting/device_html &&\
    rm -Rf -- */ &&\
    mkdir -p /home/adv/wsn_setting/device_table &&\
    cd /home/adv/wsn_setting/device_table &&\
    rm -rf * &&\
    cd /home/adv/APIGateway && node ./app.js
