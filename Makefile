.PHONY=up

up:
	COMPOSE_BUILD_TARGET=development docker-compose up -f docker-compose-dev.yml --force-recreate
