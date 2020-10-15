FROM jenkins/jenkins:lts
LABEL version="1.0.0" maintainer="zhaoxiaowei <zhaoxiaowei@efy-tech.com>"
USER root
RUN apt-get update && apt-get install -y sudo && rm -rf /var/lib/apt/lists/*
RUN echo "jenkins ALL=NOPASSWD: ALL">>/etc/sudoers
USER jenkins