FROM alpine

COPY install.sh /
COPY nsenter /

RUN apk update && apk upgrade && \
    apk add --no-cache bash && \
    bash /install.sh

ENTRYPOINT [ "bash" ]
CMD [ "-c", "while true; do sleep 2; done" ]
