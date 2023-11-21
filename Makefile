.PHONY: bash commit

CONTAINER_MARIADB = mariadb

bash:
	docker exec -it ${CONTAINER_MARIADB} /bin/bash

up:
	docker compose up -d

down:
	docker compose down

commit:
	sudo chmod -R 777 . && \
	git add . && \
	git commit -m "default commit" && \
	git push

create-network:
	docker network create custom_network