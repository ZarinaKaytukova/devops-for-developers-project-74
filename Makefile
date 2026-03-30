install:
	docker compose run --rm app make setup

ci:
	docker сompose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app

dev:
	docker compose up