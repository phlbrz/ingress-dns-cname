FROM python:3.10.5-slim

ENV ANSIBLE_HOME /home/ansible

RUN apt update && \
    apt install -y ssh-client && \
    apt-get clean && \
    pip install ansible && \
    pip install pywinrm && \
    pip install pywinrm[credssp] && \
    groupadd -r ansible && \
    useradd -mrg ansible ansible

ADD playbook ${ANSIBLE_HOME}/playbook
ADD run-playbook.sh ${ANSIBLE_HOME}

RUN chown ansible:ansible -R ${ANSIBLE_HOME} && chmod +x ${ANSIBLE_HOME}/run-playbook.sh
USER ansible
WORKDIR ${ANSIBLE_HOME}

CMD ["./run-playbook.sh"]