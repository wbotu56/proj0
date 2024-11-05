# v0.01 - docker containers within same network, app is launched via python from entrypoint
## How to start app:
- replace 'placeholder' values to the actual ones in \*.env.template files
- `docker build -t db -f pgdb.Dockerfile .`
- `docker build -t app -f app.Dockerfile .`
- `docker network create --driver bridge db-test`
- `docker run --name db --network db-test --rm --env-file pgdb.env --expose 5432 -d db`
- `docker run --name app --network db-test --rm --env-file app.env -p 8000:8000 -d app`
- `docker container logs <CONTAINER_NAME> --follow`
## How to stop app:
- `docker stop app db`
- `docker network rm db-test`
