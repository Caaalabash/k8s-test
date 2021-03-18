#!/bin/bash
nginx -t
if [[ $? -eq 0 ]];then
    touch /tmp/container_ready
    nginx -g 'daemon off;'
else
    echo "Nginx config error, pause for troubleshooting"
    sleep infinity
fi
