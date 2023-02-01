# dbt Demo Project

## Requirement

### External
In order to run the dbt demo we require a "running" SQL-DB. 
The DB connection has to be setup in a `profiles.yml` file which can be generated using the
provided [profiles_template.yml](profiles_template.yml).

Moreover, the demo expects two tables `public.names` and `public.additional_data` in the database these tables can be
filled with data using the provided `.csv` files in the [sample_data](sample_data) folder.

### Internal
A working installation of[dbt](https://docs.getdbt.com/docs/get-started/installation).
Check with
```bash
dbt --version 
```
Make sure you also installed the required [adapter for you database](https://docs.getdbt.com/docs/supported-data-platforms). 

### Using the starter project

Try running the following commands:
- dbt run
- dbt test


### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
