include .env
export

build:
	docker-compose build

run:
	docker-compose up -d

test:
	go test -v ./...

migrate:
	migrate -path ./schema -database 'postgres://postgres:$(DB_PASSWORD)@0.0.0.0:5436/postgres?sslmode=disable' up