# Используем базовый образ Jenkins с Long-Term Support (LTS)
FROM jenkins/jenkins:lts

# Копируем скрипт установки плагинов Jenkins в директорию /usr/local/bin/
COPY install-plugins.sh /usr/local/bin/

# Устанавливаем необходимые плагины Jenkins
RUN chmod +x /usr/local/bin/install-plugins.sh && \
    /usr/local/bin/install-plugins.sh \
    git \
    workflow-aggregator \
    docker-workflow \
    blueocean \
    # Другие плагины, необходимые для вашего проекта

# Опционально: копируем конфигурационные файлы Jenkins (если требуется)
# COPY <локальный_файл> /var/jenkins_home/

# Опционально: устанавливаем настройки по умолчанию (если требуется)
# ENV JENKINS_USER <пользователь>
# ENV JENKINS_PASS <пароль>

# Опционально: устанавливаем прокси (если требуется)
# ENV http_proxy <http://proxy.example.com:8080>
# ENV https_proxy <http://proxy.example.com:8080>

# Опционально: устанавливаем переменные окружения (если требуется)
# ENV MY_ENV_VAR <значение>

# Опционально: задаем команду по умолчанию для запуска Jenkins
# CMD ["java", "-jar", "/usr/share/jenkins/jenkins.war"]
