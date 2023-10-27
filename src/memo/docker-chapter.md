# Docker

#### Docker関連を全て削除するコマンド

``` bash
alias dockerclean='docker rm -f `docker ps -aq` ; docker rmi -f `docker images -q` ; docker volume rm $(docker volume ls -qf dangling=true) ; docker builder prune -af ; docker network prune -f ; docker system df'
```

#### docker_buildコマンドでCPUアーキテクチャを指定する場合の例

``` bash
docker build --platform linux/amd64 -t xxxxxxxxxxxx.dkr.ecr.ap-northeast-1.amazonaws.com/h4b-ecs-helloworld:0.0.1 .
```

#### DockerfileでCPUアーキテクチャを指定する場合の例

``` bash
FROM --platform=linux/amd64 ubuntu:18.04
```

#### docker compose で 指定する場合

``` yml
  app:
    app_base
    image: rails_latest
    build:
      context: .
      dockerfile: Dockerfile-deploy
    platform: linux/x86_64
```
