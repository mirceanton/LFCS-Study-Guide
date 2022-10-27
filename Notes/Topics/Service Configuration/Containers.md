# Managing (Docker) Containers

- installing: `sudo dnf install docker`

- modify configured registries: `sudo vim /etc/containers/registries.conf`

- pull a docker image: `docker pull nginx`
- show docker images: `docker image ls`
- remove docker image: `docker image rm nginx`

- run a nginx container: `docker run -d nginx --name=mynginx`
- stop a running container: `docker stop mynginx`
- start a stopped container: `docker start mynginx`
- delete a container: `docker rm mynginx`

- show running containers: `docker ps`
- show all containers: `docker ps -a`

> See the [official commandline reference](https://docs.docker.com/engine/reference/commandline/docker/)
