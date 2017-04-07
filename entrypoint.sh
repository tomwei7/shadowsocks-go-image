#!/bin/bash
set -e

if [[ "$1" == *.json ]];then
    set -- shadowsocks-server -c "$@"
else
    if [ ! -z $SS_PORT ]; then
        set -- -p $SS_PORT "$@"
    else
        set -- -p 8388 "$@"
    fi
    if [ ! -z $SS_METHOD ]; then
        set -- -m $SS_METHOD "$@"
    else
        set -- -m aes-128-cfb "$@"
    fi
    if [ ! -z $SS_PASSWD ]; then
        set -- -k $SS_PASSWD "$@"
    fi
    set -- shadowsocks-server "$@"
fi

exec "$@"
