# Managing (Docker) Containers

- Install docker (container engine)
```bash
sudo dnf install docker
```

- Modify configured registries
```bash
sudo vim /etc/containers/registries.conf
```

- Pull (download) a docker image
```bash
docker pull nginx
```

- Show downloaded docker images
```bash
docker image ls
```

- Remove a docker image
```bash
docker image rm nginx
```

- Run a nginx container
```bash
docker run -d nginx --name=mynginx
```

- Stop a running container
```bash
docker stop mynginx
```

- Start a stopped container
```bash
docker start mynginx
```

- Delete a container
```bash
docker rm mynginx
```

- Show running containers
```bash
docker ps
```

- Show all containers
```bash
docker ps -a
```

> See the [official commandline reference](https://docs.docker.com/engine/reference/commandline/docker/)
