# Laravel Vue Starter

## Описание
Это проект, состоящий из двух частей: бэкенда на Laravel 10 и фронтенда на Vue.js 3. Он использует PostgreSQL 15 в качестве базы данных и Docker для контейнеризации.

## Структура проекта

```plaintext
laravel-vue-starter/
│
├── backend/               # Директория для Laravel
│   ├── app/               # Основная логика приложения
│   ├── bootstrap/          # Файлы для инициализации приложения
│   ├── config/            # Конфигурационные файлы
│   ├── database/          # Миграции и сидеры базы данных
│   ├── public/            # Публичные файлы (например, index.php)
│   ├── resources/         # Шаблоны, локализации
│   ├── routes/            # Файлы маршрутов
│   ├── storage/           # Логи, файлы кэша, загруженные файлы
│   ├── tests/             # Тесты
│   ├── docker/            # Директория для Docker файлов
│   │   └── Dockerfile      # Dockerfile для бэкенда
│   └── docker-compose.yml  # docker-compose для бэкенда
│
├── frontend/              # Директория для Vue
│   ├── public/            # Публичные файлы (например, index.html)
│   ├── src/               # Исходный код приложения
│   │   ├── assets/        # Статические ресурсы (изображения, стили)
│   │   ├── components/    # Vue-компоненты
│   │   ├── views/         # Вьюхи (страницы)
│   │   ├── router/        # Настройки маршрутизации
│   │   └── store/         # Vuex (глобальное состояние)
│   ├── tests/             # Тесты для Vue
│   ├── docker/            # Директория для Docker файлов
│   │   └── Dockerfile      # Dockerfile для фронтенда
│   └── docker-compose.yml  # docker-compose для фронтенда
│
├── Makefile                # Скрипты для сборки и управления проектом
└── README.md               # Документация проекта
```

## Установка

Следуйте этим шагам, чтобы установить проект:

1. **Клонируйте репозиторий**:
   ```bash
   git clone https://github.com/itech-programmer/laravel-vue-starter.git
   cd laravel-vue-starter

2. **Соберите и запустите проект**:
    ```bash
    make up
    ```

## Использование
После запуска проекта, вы сможете получить доступ к следующим компонентам:

- **Приложение Vue**: [http://localhost:8080](http://localhost:8080)
- **API Laravel**: [http://localhost:9000](http://localhost:9000)

### Скриншоты

![Приложение Vue](link-to-your-screenshot-vue)
![API Laravel](link-to-your-screenshot-api)

### Примечания

Убедитесь, что все сервисы запущены, прежде чем пытаться получить доступ к этим адресам.

## Команды
make up: Запускает все сервисы в фоновом режиме.
make down: Останавливает все сервисы.

## Команды

Ниже приведены команды для управления проектом:

- **`make up`**: Запускает все сервисы в фоновом режиме.
- **`make down`**: Останавливает все сервисы.
- **`make restart`**: Перезапускает все сервисы.

## Технологии
- **`Laravel`**: PHP фреймворк для бэкенда
- **`Vue.js`**: JavaScript фреймворк для фронтенда
- **`PostgreSQL`**: Система управления базами данных
- **`Docker`**: Платформа для контейнеризации
- **`Yarn`**: Менеджер пакетов для JavaScript