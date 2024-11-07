# v0.02 - docker containers are managed by compose file now
## How to start app:
- put `POSTGRES_PASSWORD=<database password>` in the .env file
- `docker compose up` or `docker compose up -d` to run containers in the background
- `docker container logs <CONTAINER_NAME> --follow`
## How to stop app:
- `docker compose stop`
## How to remove created containers:
- `docker compose down`
- `docker volume rm proj0_pgdata`
