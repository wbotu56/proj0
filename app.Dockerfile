# syntax=docker/dockerfile:1
FROM python:3.8-alpine
EXPOSE 8000
WORKDIR /APP
COPY app/ .
COPY entrypoint.sh .
RUN apk add --no-cache libwebp-dev jpeg-dev zlib-dev postgresql-libs && apk add --no-cache --virtual .build-deps postgresql-dev musl-dev gcc && pip install -r requirements.txt --no-cache-dir && apk --purge del .build-deps
ENTRYPOINT [ "./entrypoint.sh" ]
