## Ejabberd docker compose

This is simple ejabberd config for running on localc host under docker compose.

All configuration options available on in official documentation:
https://docs.ejabberd.im/admin/guide/managing/


See Makefile for available commands.

Run without docker compose

```bash
docker run -d --name ejabberd -v ./conf/ejabberd.yml:/home/ejabberd/conf/ejabberd.yml -p 5222:5222 ejabberd/ecs
```
> **Notice** - this config expose http API to cominicate with ejabberd. more documentation can be found here
> https://docs.ejabberd.im/developer/ejabberd-api/admin-api/

## TODO
- secure application. Test in production mode
- connect other volumes for db, logs etc.
- use postgres as db
- create automation scripts to backup
