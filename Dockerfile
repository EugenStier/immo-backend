# Базовый образ
FROM node:20

# Рабочая директория
WORKDIR /app

# Копируем зависимости
COPY package*.json ./
COPY tsconfig.json ./
COPY ./src ./src

# Устанавливаем зависимости
RUN npm install

# Собираем TypeScript
RUN npm run build

# Указываем порт
EXPOSE 3000

# Запуск приложения
CMD ["node", "dist/app.js"]