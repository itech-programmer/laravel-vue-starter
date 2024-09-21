BACKEND_DOCKER_COMPOSE = backend/docker-compose.yml
FRONTEND_DOCKER_COMPOSE = frontend/docker-compose.yml

DOCKER_COMPOSE = docker-compose -f

.PHONY: build backend-setup frontend-setup up down restart

# Собрать все образы без кэша (по желанию: используйте --no-cache)
build: backend-setup frontend-setup

# Настроить и собрать бэкенд без кэша
backend-setup:
	$(DOCKER_COMPOSE) $(BACKEND_DOCKER_COMPOSE) build --no-cache

# Настроить и собрать фронтенд без кэша
frontend-setup:
	$(DOCKER_COMPOSE) $(FRONTEND_DOCKER_COMPOSE) build --no-cache

# Запустить все контейнеры
up:
	$(DOCKER_COMPOSE) $(BACKEND_DOCKER_COMPOSE) up -d
	$(DOCKER_COMPOSE) $(FRONTEND_DOCKER_COMPOSE) up -d

# Остановить и удалить все контейнеры
down:
	$(DOCKER_COMPOSE) $(BACKEND_DOCKER_COMPOSE) down
	$(DOCKER_COMPOSE) $(FRONTEND_DOCKER_COMPOSE) down

# Перезапустить все контейнеры
restart: down up
