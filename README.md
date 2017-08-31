# Docker Nginx Lets Encrypt

Before you do anything, you need to generate a dhparam key.

```bash
docker run -ti -v $PWD/data/certs:/certs digitalcanvasdesign/openssl dhparam -out /certs/dhparam.pem 2048
```


```bash
/etc/nginx/ssl/dhparam.pem;
```
