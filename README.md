# docker-danted
Dante SOCKS proxy server on Alpine Linux

## Usage

```
docker run -d --restart=always --name=danted -p 1080:1080 andsky/danted:latest
```
curl --socks5 127.0.0.1:1080 https://ipadd.cn
