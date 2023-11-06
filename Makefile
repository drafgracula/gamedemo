.PHONY: all

SHELL=/bin/bash -e

.DEFAULT_GOAL := help

-include .env

help: ## Справка
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

up: ## Запуск проекта
	docker-compose -f docker/docker-compose.yml up -d