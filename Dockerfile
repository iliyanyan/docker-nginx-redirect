FROM nginx:1.9

ADD run.sh /run.sh
ADD default.conf /etc/nginx/conf.d/default.conf
ADD whitelist.conf /whitelistconf

CMD sh run.sh
