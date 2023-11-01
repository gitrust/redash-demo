
setup:
	make pull
	make run-db
	make db

start:
	docker compose up -d 

pull:
	docker compose pull

stop:
	docker compose down

cleanup:
	docker compose down -v
	@if exist postgres-data rmdir /Q /S postgres-data

logs:
	docker compose logs -f

db:
	docker compose run --rm server create_db


pg-bash:
	 docker-compose exec -u postgres postgres bash

run-db:
	docker-compose up postgres -d
