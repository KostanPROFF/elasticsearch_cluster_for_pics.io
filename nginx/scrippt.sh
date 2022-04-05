#!/usr/bin/env sh

NGINX_LOG_PATH="/var/log/nginx/"
ES_LOG_1="/var/log/elasticsearch/"
ES_LOG_2="/var/log/elasticsearch/"
ES_LOG_3="/var/log/elasticsearch/"

if [ $# -eq 0 ]; then
    tail -1000 "${NGINX_LOG_PATH}"
elif [ $1 -eq "1" ]; then
    tail -1000 "${ES_LOG_1}"
elif [ $1 -eq "2" ]; then
    tail -1000 "${ES_LOG_2}"
elif [ $1 -eq "3" ]; then
    tail -1000 "${ES_LOG_3}"
else
    echo "Not supported"
fi