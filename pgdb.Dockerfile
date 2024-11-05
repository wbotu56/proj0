# syntax=docker/dockerfile:1
FROM postgres:17-alpine
HEALTHCHECK --interval=10s --timeout=5s --retries=3 --start-period=5s CMD pg_isready -U ${POSTGRES_USER} -d ${POSTGRES_DB}
