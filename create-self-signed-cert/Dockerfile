FROM alpine
RUN apk add --update openssl bash && \
    rm -rf /var/cache/apk/*
RUN mkdir /opt/certs
WORKDIR /opt/certs/
ADD create-self-signed-cert.sh /
ENTRYPOINT ["/bin/bash","/create-self-signed-cert.sh"]
