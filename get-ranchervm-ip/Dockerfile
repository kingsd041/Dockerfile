FROM ubuntu:16.04
RUN apt-get update && \
    apt-get install -y curl && \
    curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.10.3/bin/linux/amd64/kubectl && \
    chmod +x ./kubectl && \
    mv ./kubectl /usr/local/bin/kubectl
ADD run.sh /run.sh
VOLUME ["/var/lib/rancher/cube/"]
ENTRYPOINT ["/run.sh"]
