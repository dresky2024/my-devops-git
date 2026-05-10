# Берем за основу очень легкий образ Linux
FROM alpine:latest

# Устанавливаем bash (в alpine его нет по умолчанию)
RUN apk add --no-cache bash

# Копируем твой скрипт внутрь контейнера
COPY init.sh /init.sh

# Даем права на запуск (на всякий случай)
RUN chmod +x /init.sh

# Команда, которая выполнится при старте контейнера
CMD ["/bin/bash", "/init.sh"]

