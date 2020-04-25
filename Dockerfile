FROM openresty/openresty:alpine

WORKDIR /app

VOLUME /app/logs

COPY ./entrypoint.sh ./entrypoint.sh

COPY ./lua ./lua
COPY ./nginx ./nginx

ENTRYPOINT [ "/app/entrypoint.sh" ]
