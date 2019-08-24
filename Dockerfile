FROM alpine:3.10.1

ENV K8S_VERSION=1.15.0    

RUN apk update apk \
 && apk add --no-cache --upgrade curl grep bash \
 && rm -rf /var/cache/apk/*

RUN wget https://storage.googleapis.com/kubernetes-release/release/v${K8S_VERSION}/bin/linux/amd64/kubectl \
  && mv kubectl /usr/local/bin/kubectl \
  && chmod +x /usr/local/bin/kubectl
