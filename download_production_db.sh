export PGPASSWORD=boat_projects
heroku pgbackups:capture --expire && \
curl -o remote_db.dump `heroku pgbackups:url` && \
pg_dump --username=boat_projects --no-password > local_db.dump && \
pg_dump --username=boat_projects --no-password < remote_db.dump && \
rake db:migrate