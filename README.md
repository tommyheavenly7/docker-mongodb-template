# Docker MongoDB Settings

The project can be a part of project templates to run MongoDB as a docker 
container. You also can use mongo-express but not required.

## Basic setup

`create_cert.sh` depends on [mkcert](https://github.com/FiloSottile/mkcert) 
for making locally-trusted development certificates. You can skip the step
if you don't need SSL.

```bash
$ docker/bin/create_cert.sh
```

Please edit `docker-compose.yaml` if needed. 

```bash
$ cat docker-compose.yaml.dist-admin > docker-compose.yaml
$ cat docker/.bashrc.dist > docker/.bashrc
$ source docker/.bashrc
$ _build
$ _up
$ _ps
    Name                   Command               State                    Ports
-------------------------------------------------------------------------------------------------
mongo-db        docker-entrypoint.sh --noauth    Up      0.0.0.0:27017->27017/tcp
mongo-express   tini -- /docker-entrypoint ...   Up      8081/tcp
mongo-nginx     nginx -g daemon off;             Up      0.0.0.0:443->443/tcp, 0.0.0.0:80->80/tcp
```
