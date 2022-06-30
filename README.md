# ingress-dns-cname

## Description

An automation to publish a CNAME DNS internally.
It helps to publish a ingress (Openshift/Kubernetes) / route (Openshift) for an application.

## Dependencies

- Container plataform (Docker, crio, etc).  
- Docker build / Buildah - to test locally.
- Microsoft Active Directory available to connect.
- Python.
- Ansible.
- Ansible Windows module.
- Shell script.

## Usage

- Clone this repository

```shell
git clone https://github.com/phlbrz/ingress-dns-cname.git
```

- Change directory to cloned repository directory.

```shell
cd ingress-dns-cname
```

- Make a build

```shell
docker build -t ingress-dns-cname:1.0.0-dev .
```

- Run image

```shell
# Needs
# file.txt with contents, eg.:
# anewroute
# someroute
# api-route-published

# Environments

# PLAYBOOK: eg.: PLAYBOOK="publish-cname-dns.yml"
# FILENAME: eg.: FILENAME="file.txt"
# AD_USER: eg.: AD_USER="useraccount"
# AD_PASS: eg.: AD_PASS="changeit"

docker run -it -e PLAYBOOK="publish-cname-dns.yml" -e FILENAME="/home/ansible/file.txt" -e USER_AD="useraccount" -e USER_PASS="changeit" ingress-dns-cname:1.0.0-dev

```
