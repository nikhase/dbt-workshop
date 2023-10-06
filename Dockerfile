FROM ghcr.io/dbt-labs/dbt-postgres:1.6.1

RUN pip install elementary-data==0.10.0

WORKDIR /usr/app
COPY . .
# profiles.yml must be created, can be filled with references to environment variables.
# Pass those env vars to the container when started
# See https://docs.getdbt.com/reference/dbt-jinja-functions/env_var
COPY profiles.yml
RUN ["dbt","deps"]
ENTRYPOINT ["dbt"]
