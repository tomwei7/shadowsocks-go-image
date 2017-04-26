FROM golang:1.7

LABEL maintainer "tomwei7g@gmail.com"

RUN go get github.com/shadowsocks/shadowsocks-go/cmd/shadowsocks-server
RUN go get github.com/shadowsocks/shadowsocks-go/cmd/shadowsocks-local
COPY entrypoint.sh /entrypoint.sh
EXPOSE 8388
ENTRYPOINT ["/entrypoint.sh"]
