# syntax=docker/dockerfile:1
FROM python:3.8-alpine
EXPOSE 8000
WORKDIR /app
COPY app/ .
RUN apk add --no-cache libwebp-dev jpeg-dev zlib-dev postgresql-libs \
  && apk add --no-cache --virtual .build-deps postgresql-dev musl-dev gcc linux-headers\
  && pip install -r requirements.txt --no-cache-dir \
  && pip install uwsgi --no-cache-dir \
  && apk --purge del .build-deps
COPY entrypoint.sh .
COPY uwsgi.ini .
ENTRYPOINT [ "./entrypoint.sh" ]
