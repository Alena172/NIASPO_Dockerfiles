# Используем базовый образ Jenkins с Long-Term Support (LTS)
FROM jenkins/jenkins:lts

COPY install-plugins.sh /usr/local/bin/

RUN /usr/local/bin/install-plugins.sh \
    git \
    workflow-aggregator \
    docker-workflow \
    blueocean \
