# drone_in_docker

- https://hub.docker.com/r/zaru/drone_in_docker/

## Installed packages

- jq
- aws-cli

## Usage

example `.drone.yml`

```
pipeline:
  build:
    image: zaru/drone_in_docker:0.1.1
    volumes:
      - /var/run/docker.sock:/var/run/docker.sock
    commands:
      - |
        docker build -t app-${DRONE_BRANCH}:${DRONE_BUILD_NUMBER} -f Dockerfile.drone  \
          --build-arg HOGE=${HOGE}　\
          .
```
