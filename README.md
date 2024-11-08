# v0.02 - docker containers are managed by compose file now
## How to start app:
* 'Party Parrot App' repo is managed as a submodule, so you need to init & update it first:
  ```bash
  git submodule init && git submodule update
  ```
* put `POSTGRES_PASSWORD=<database password>` in the .env file
* ```bash
  docker compose up
* ```bash
  docker container logs <CONTAINER_NAME> --follow
  ```
## How to stop app:
* ```bash
  docker compose stop
  ```
## How to remove created containers:
* ```bash
  docker compose down
  docker volume rm proj0_pgdata
  ```
