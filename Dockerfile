FROM alpine:latest

ENV TERRAFORM_VERSION=0.10.0
ENV TERRAFORM_SHA256SUM=f991039e3822f10d6e05eabf77c9f31f3831149b52ed030775b6ec5195380999
ENV ORACLE_BARE_METAL_CLOUD=1.0.16

RUN apk add --update git curl openssh && \
    curl https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip > terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
    echo "${TERRAFORM_SHA256SUM}  terraform_${TERRAFORM_VERSION}_linux_amd64.zip" > terraform_${TERRAFORM_VERSION}_SHA256SUMS && \
    sha256sum -cs terraform_${TERRAFORM_VERSION}_SHA256SUMS && \
    unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip -d /bin && \
    rm -f terraform_${TERRAFORM_VERSION}_linux_amd64.zip

RUN apk add bash openssl && \
      wget https://github.com/oracle/terraform-provider-baremetal/releases/download/v${ORACLE_BARE_METAL_CLOUD}/linux.tar.gz && \
      mkdir /usr/local/oracle && \
      tar -C /usr/local/oracle -xzf linux.tar.gz && \
      cp /usr/local/oracle/linux_amd64/terraform-provider-baremetal /home && \
      rm -rf /usr/local/linux.tar.gz

COPY install.sh /home/install.sh

WORKDIR /home

CMD ["sh", "-c", "sleep 300"]
