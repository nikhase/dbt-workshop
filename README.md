# dbt Demo Project

Based on the dbt own [jaffle shop demo](https://github.com/dbt-labs/jaffle_shop)

## Requirement

### External
In order to run the dbt demo we require a "running" SQL-DB.
```
docker run --name some-postgres -e POSTGRES_PASSWORD=<secret> -e POSTGRES_USER=<user> -p 5432:5432 postgres
```
Moreover, the demo expects two tables `public.names` and `public.additional_data` in the database these tables can be
filled with data using the provided `.csv` files in the [sample_data](sample_data) folder.

### Internal
A working installation of [dbt](https://docs.getdbt.com/docs/get-started/installation).
Check with
```bash
dbt --version
installed version: 1.0.0
   latest version: 1.0.0

Up to date!

Plugins:
  - postgres: 1.0.0```
```

Make sure you also installed the required [adapter for you database](https://docs.getdbt.com/docs/supported-data-platforms)
for the postgres.

The DB connection has to be setup in a `profiles.yml` file which can be generated using the
provided [profiles_template.yml](profiles_template.yml).

### Using the starter project

Try running the following commands:
- dbt run
- dbt test


### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
