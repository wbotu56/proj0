# v0.02 - docker containers are managed by compose file now
## How to start app:
* 'Party Parrot App' repo is managed as a submodule, so you need to init & update it first:
  ```console
  git submodule init && git submodule update
  ```
* put `POSTGRES_PASSWORD=<database password>` in the .env file
* ```console
  docker compose up
* ```console
  docker container logs <CONTAINER_NAME> --follow
  ```
## How to stop app:
* ```console
  docker compose stop
  ```
## How to remove created containers:
* ```console
  docker compose down
  docker volume rm proj0_pgdata
  ```
