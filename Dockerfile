FROM centos:7
MAINTAINER Bjorn Stange <bjorn248@gmail.com>

RUN yum -y install unzip wget
RUN wget https://dl.bintray.com/mitchellh/vault/vault_0.3.0_linux_amd64.zip
RUN unzip vault_0.3.0_linux_amd64.zip
RUN mv vault /usr/local/bin
RUN rm -f vault_0.3.0_linux_amd64.zip
ADD vault_config.hcl /etc/vault_config.hcl

EXPOSE 8200

ENTRYPOINT [ "vault" ]
CMD [ "server", "-config", "/etc/vault_config.hcl" ]
