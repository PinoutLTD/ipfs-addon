ARG BUILD_FROM
FROM $BUILD_FROM
USER root

WORKDIR /

RUN apk add --no-cache kubo

RUN ipfs init -p local-discovery
RUN ipfs bootstrap add /dns4/1.pubsub.aira.life/tcp/443/wss/ipfs/QmdfQmbmXt6sqjZyowxPUsmvBsgSGQjm4VXrV7WGy62dv8
RUN ipfs bootstrap add /dns4/2.pubsub.aira.life/tcp/443/wss/ipfs/QmPTFt7GJ2MfDuVYwJJTULr6EnsQtGVp8ahYn9NSyoxmd9
RUN ipfs bootstrap add /dns4/3.pubsub.aira.life/tcp/443/wss/ipfs/QmWZSKTEQQ985mnNzMqhGCrwQ1aTA6sxVsorsycQz9cQrw
RUN ipfs config --json Datastore.StorageGCWatermark 70
RUN ipfs config Addresses.Gateway /ip4/0.0.0.0/tcp/8080

# Copy data for add-on
COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
