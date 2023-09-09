start:
	docker compose up -d --build --force-recreate

admin:
	docker exec -it ejabberd_local /home/ejabberd/bin/ejabberdctl register admin localhost adm123

down:
	docker compose down -v

enter_container:
	docker exec -it ejabberd_local sh

ejabberd_logs:
	docker logs -f ejabberd_local
