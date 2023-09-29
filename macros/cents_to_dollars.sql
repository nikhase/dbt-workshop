{% macro cents_to_dollars(column_name, precision=2) %}
    CAST({{ column_name }} / 100 AS NUMERIC)
{% endmacro %}

## Unfortunately BigQuery does not allow casting to parameterized types like "NUMERIC(16, {{ precision }})"
