#!/bin/sh
envsubst '\$BACKEND_URL' < /etc/nginx/conf.d/site.template > /etc/nginx/conf.d/site.conf
nginx -t
if [[ $? -eq 0 ]];then
    touch /tmp/container_ready
    nginx -g 'daemon off;'
else
    echo "Nginx config error, pause for troubleshooting"
    sleep infinity
fi
