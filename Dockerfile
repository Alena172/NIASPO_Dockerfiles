# Используем базовый образ Jenkins с Long-Term Support (LTS)
FROM jenkins/jenkins:lts

# Копируем скрипт установки плагинов Jenkins в директорию /usr/local/bin/
COPY install-plugins.sh /usr/local/bin/

# Устанавливаем права на выполнение для скрипта
RUN chmod +x /usr/local/bin/install-plugins.sh

# Запускаем скрипт для установки необходимых плагинов Jenkins
RUN /usr/local/bin/install-plugins.sh \
    git \
    workflow-aggregator \
    docker-workflow \
    blueocean
