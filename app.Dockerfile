# syntax=docker/dockerfile:1
FROM python:3.8-alpine
LABEL org.opencontainers.image.source=https://github.com/wbotu56/proj0
LABEL org.opencontainers.image.description="proj0 app container image"
WORKDIR /app
COPY app/requirements.txt .
RUN apk add --no-cache libwebp-dev jpeg-dev zlib-dev postgresql-libs \
  && apk add --no-cache --virtual .build-deps postgresql-dev musl-dev gcc linux-headers\
  && pip install -r requirements.txt --no-cache-dir \
  && pip install uwsgi --no-cache-dir \
  && apk --purge del .build-deps
COPY entrypoint.sh .
COPY uwsgi.ini .
COPY app/ .
ENTRYPOINT [ "./entrypoint.sh" ]
