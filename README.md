# Docker Nginx Lets Encrypt

Before you do anything, you need to generate a dhparam key. If you have `openssl` installed on your machine, you can run:

```bash
openssl dhparam -out /certs/dhparam.pem 2048
```

Or a container:

```bash
docker run -ti -v $PWD/data/certs:/certs digitalcanvasdesign/openssl dhparam -out /certs/dhparam.pem 2048
```

We need to make sure the `dhparam.pem` key that we just generated was created is mounted into your container at the following location:

```bash
/etc/nginx/ssl/dhparam.pem
```
