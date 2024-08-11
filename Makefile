.PHONY: up spec rubocop annotate

up:
	docker compose up -d

down:
	docker compose down

build:
	docker compose build

spec:
	docker compose exec backend bundle exec rails spec

spec_file:
	docker compose exec backend bundle exec rails spec $(FILE)

rubocop:
	docker compose exec backend bundle exec rubocop --config .rubocop.yml

rubocop-a:
	docker compose exec backend bundle exec rubocop --config .rubocop.yml -A

annotate:
	docker compose exec backend bundle exec annotate

migrate:
	docker compose exec backend bundle exec rake db:ridgepole_apply_and_annotate

rollback:
	docker compose exec backend rails db:rollback

seed:
	docker compose exec backend rails db:seed

c:
	docker compose exec backend rails c

install:
	docker compose exec backend bundle install

migrate-status:
	docker compose exec backend rails db:migrate:status 
