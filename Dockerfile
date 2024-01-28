# Используем официальный образ Python версии 3.8
FROM python:3.12

# Устанавливаем переменную окружения для управления выводом Python
ENV PYTHONUNBUFFERED 1

# Создаем и переходим в рабочую директорию /app
WORKDIR /app

# Копируем файлы зависимостей (requirements.txt) в контейнер
COPY requirements.txt /app/

# Устанавливаем зависимости через pip
RUN pip install --no-cache-dir -r requirements.txt

# Копируем все файлы вашего приложения в контейнер
COPY . /app/

# Команда для запуска вашего бота (замените на имя вашего файла с ботом)
CMD ["python", "rune.py"]
