# vault-dockerfile
Centos7 Dockerfile for running Hashicorp Vault

## Building your Docker Container
```
docker build -t bjorn248/vault .
```

## Running Vault
```
docker run --cap-add IPC_LOCK bjorn248/vault
```
