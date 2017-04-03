FROM golang:1.7
RUN go get github.com/shadowsocks/shadowsocks-go/cmd/shadowsocks-server
COPY entrypoint.sh /entrypoint.sh
EXPOSE 8388
ENTRYPOINT ["/entrypoint.sh"]
