FROM progrium/busybox
MAINTAINER Stephane Jourdan <fasten@fastmail.fm>
ENV REFRESHED_AT 2015-10-14
ENV VAULT_VERSION 0.4.0

ADD https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_amd64.zip /tmp/vault.zip
RUN cd /bin && unzip /tmp/vault.zip && chmod +x /bin/vault && rm /tmp/vault.zip

EXPOSE 8200
ENV VAULT_ADDR "http://127.0.0.1:8200"

ADD config /config

ENTRYPOINT ["/bin/vault"]
CMD ["server", "-config=/config/etcd.hcl"]
