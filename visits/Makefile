DOCKER_COMPOSE ?= docker-compose
ENVFILE ?= env.template

.PHONY: help
help: ## show all targets help
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

.PHONY: envfile
envfile:
	cp -f $(ENVFILE) .env

.PHONY: shell
shell:
	$(DOCKER_COMPOSE) run --rm node-app -d sh -l

.PHONY: up
up: ## build target that will perform a docker-compose up (build and run) command against our Dockerfile
	${DOCKER_COMPOSE} up -d

.PHONY: endpoint
endpoint:
	curl http://localhost:8080

.PHONY: build
build: ## build target that will perform a docker-compose build command against our Dockerfile
	${DOCKER_COMPOSE} build

.PHONY: run
run: ## run target that will perform a docker-compose run against a single docker-compose service
	${DOCKER_COMPOSE} run redis
