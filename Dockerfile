FROM minio/minio:latest

RUN chmod -R 777 /usr/bin

COPY ./minio /usr/bin/minio
COPY dockerscripts/docker-entrypoint.sh /usr/bin/docker-entrypoint.sh

ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]

CMD ["server", "/data", "--console-address", ":9001"]
