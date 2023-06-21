FROM ghcr.io/dbt-labs/dbt-postgres:1.5.1

WORKDIR /usr/app
COPY . .
COPY profiles/template/profiles.yml .
RUN ["dbt","deps"]
ENTRYPOINT ["dbt"]