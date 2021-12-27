# all our targets are phony (no files to check).
.PHONY: docker

.DEFAULT_GOAL := all

up:
	docker-compose -f local-dev-db.yml up -d

down:
	docker-compose -f local-dev-db.yml down

update:
	docker-compose -f local-dev-db.yml up -d

all: up 