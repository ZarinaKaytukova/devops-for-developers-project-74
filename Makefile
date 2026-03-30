install:
	docker compose run --rm --build app make setup

ci:
	docker compose -f docker-compose.yml up --build --abort-on-container-exit --exit-code-from app --remove-orphans

dev:
	docker compose -f docker-compose.yml -f docker-compose.override.yml up --build --remove-orphans

down:
	docker compose down --remove-orphans
