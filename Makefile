.PHONY: reset run build

run: setup
	@#docker compose up
	scripts/run-docker
	make down

down:
	docker compose down
setup: .env setup/snx_install.sh

reset:
	docker compose down
	sudo rm -fR ./firefox

.env:
	@echo "create default .env"
	@cp env.sample .env

setup/snx_install.sh:
	@echo "download setup file with scripts/download.sh <url_vpn_server>"
	exit 1

build: .env setup/snx_install.sh
	make reset
	docker compose build

cli:
	docker compose run --rm snx bash
