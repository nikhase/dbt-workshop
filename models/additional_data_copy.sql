with additional_data_copy as (
  select *
  from {{ source('public', 'additional_data') }}
)

select *
from additional_data_copy