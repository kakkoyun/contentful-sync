.PHONY: test run

test:
	docker-compose up -d \
		&& rake test:all \
		&& docker-compose down

run:
	docker-compose up -d \
		&& bundle exec rails s \
