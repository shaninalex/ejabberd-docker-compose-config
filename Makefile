start:
	docker compose up -d --build --force-recreate

admin:
	docker exec -it ejabberd_local /home/ejabberd/bin/ejabberdctl register admin localhost adm123

issue_token:
	docker exec -it ejabberd_local /home/ejabberd/bin/ejabberdctl oauth_issue_token admin@localhost 3600 ejabberd:admin

down:
	docker compose down -v

enter_container:
	docker exec -it ejabberd_local sh

ejabberd_logs:
	docker logs -f ejabberd_local

rebuild: down start
