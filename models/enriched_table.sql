with enriched_table as (
    select names.first_name, names.last_name, additional_data.*
    from {{ ref ('names_copy') }} as names
    left join {{ ref ('additional_data_mapped') }} as additional_data
    on names.id = additional_data.id
)

select *
from enriched_table