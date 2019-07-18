# development-environment-docker
Portable development environment using Docker

### Resources
Image based on:
- instructions: https://awesomeopensource.com/project/mviereck/x11docker#installation
- dockerhub: https://hub.docker.com/r/x11docker/cinnamon
- dockerfile: https://github.com/mviereck/dockerfile-x11docker-cinnamon/blob/master/Dockerfile
- options: https://github.com/mviereck/x11docker/wiki/x11docker-options-overview

### Useful Commands
- List all containers (only IDs) `docker ps -aq`
- Stop all running containers. `docker stop $(docker ps -aq)`
- Remove all containers. `docker rm $(docker ps -aq)`
- Remove all images. `docker rmi $(docker images -q)`
