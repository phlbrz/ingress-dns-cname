#!/bin/bash

ansible-playbook -i "$MACHINE_FQDN", "$HOME/playbook/publish-cname-dns.yml" --list-hosts
