FROM jenkins/jenkins
USER ubuntu

RUN sudo mkdir -p /tmp/download && \
 sudo curl -L https://download.docker.com/linux/static/stable/x86_64/docker-18.03.1-ce.tgz | tar -xz -C /tmp/download && \
 sudo rm -rf /tmp/download/docker/dockerd && \
 sudo mv /tmp/download/docker/docker* /usr/local/bin/ && \
 sudo rm -rf /tmp/download && \
 sudo groupadd -g 999 docker && \
 sudo usermod -aG staff,docker jenkins

user jenkins
