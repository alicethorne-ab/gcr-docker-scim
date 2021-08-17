FROM 1password/scim:v2.1.0

USER root

RUN apt update && apt install redis-server -y

COPY ./entrypoint.sh /entrypoint.sh
COPY ./scimsession /secret/scimsession

RUN chmod +x /entrypoint.sh

EXPOSE 3002/tcp

CMD ["/entrypoint.sh"]
