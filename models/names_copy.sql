with names_copy as (
  select *
  from {{ source('public', 'names') }}
)

select *
from names_copy