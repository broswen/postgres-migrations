# Postgres Migrations

Manage Postgres migrations with Kubernetes jobs and [golang-migrate](https://github.com/golang-migrate/migrate).

The `migrations` folder contains a list of SQL files to run. They are applied in ascending order of their id in the format `{id}_{name}_[up|down].sql`.

# Migration workflow
1. Create migration files to make the schema changes.
2. Build a new docker image with the migration files.
3. Run a Kubernetes job with the new image and set the environment variables to point to the database.