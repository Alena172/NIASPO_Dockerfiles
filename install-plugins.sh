#!/bin/bash

# Функция для установки плагина Jenkins
install_plugin() {
    echo "Installing plugin: $1"
    /usr/local/bin/install-plugins.sh "$1"
}

# Устанавливаем необходимые плагины Jenkins
install_plugin() {
    echo "Installing plugin: $1"
    /usr/local/bin/install-plugins.sh "$1"
}

# Список плагинов для установки
plugins=(
    git
    workflow-aggregator
    docker-workflow
    blueocean
    # Другие плагины, необходимые для вашего проекта
)

# Устанавливаем каждый плагин из списка
for plugin in "${plugins[@]}"; do
    install_plugin "$plugin"
done
