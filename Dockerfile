# Используем базовый образ Jenkins с Long-Term Support (LTS)
FROM jenkins/jenkins:lts

# Устанавливаем необходимые плагины Jenkins
RUN /usr/local/bin/install-plugins.sh \
    git \
    workflow-aggregator \
    docker-workflow \
    blueocean \

# Задаем команду по умолчанию для запуска Jenkins
# CMD ["java", "-jar", "/usr/share/jenkins/jenkins.war"]
