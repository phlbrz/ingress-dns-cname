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
docker build -t ingress-dns-cname:v1.0.0 .
```

- Run image

```shell
# Needs
# file.txt with contents, eg.:
# anewroute
# someroute
# api-route-published

# Environments

# MACHINE_FQDN - eg.: MACHINE_FQDN="machine1"
# FILENAME - eg.: FILENAME="file.txt"
# CNAME_FQDN - eg.: CNAME_FQDN="cname.name.example"
# ZONE_FQDN - eg.: ZONE_FQDN="zone.name.example"
# COMPUTER_FQDN - eg.: COMPUTER_FQDN="computer.name.example"
# AD_USER - eg.: AD_USER="useraccount"
# AD_PASS - eg.: AD_PASS="changeit"

docker run -it -e MACHINE_FQDN="machine1" -e FILENAME="/home/ansible/file.txt" -e CNAME_FQDN="cname.name.example" -e ZONE_FQDN="zone.name.example" -e COMPUTER_FQDN="computer.name.example" -e AD_USER="useraccount" -e AD_PASS="changeit" ingress-dns-cname:v1.0.0

```
