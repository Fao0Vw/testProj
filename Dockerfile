# 1. Базовый образ с JRE (рекомендуется использовать slim-версии для меньшего размера)
FROM openjdk:17-jre-slim

# 2. Установка рабочего каталога внутри контейнера
WORKDIR /app

# 3. Копирование вашего JAR-файла в контейнер
# Замените 'your-application.jar' на имя вашего файла
COPY build/libs/*.jar app.jar

# 4. Команда для запуска приложения
ENTRYPOINT ["java", "-jar", "app.jar"]