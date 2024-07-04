# Umami

## How to Upgrade PostgreSQL

1. Add the new PostgreSQL container besides the existing one (new volume, new name, new version)
2. Deploy
3. Stop main Umami container
4. Export old DB `docker exec -it <old_db_container> pg_dumpall -U umami > dump.sql`
5. Import new DB `cat dump.sql | docker exec -i <new_db_container> psql -U umami`
6. Switch Umami to use the new DB
7. Deploy
8. Remove old DB
