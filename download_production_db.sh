export PGPASSFILE=$HOME/.pgpass
PG_ARGS="-h localhost -U boat_projects --no-password"
heroku pgbackups:capture --expire && \
curl -o remote_db.dump `heroku pgbackups:url` && \
pg_dump $PG_ARGS > local_db.dump && \
pg_restore $PG_ARGS --clean --no-acl --no-owner -d boat_projects remote_db.dump && \
rake db:migrate