with additional_data_mapped as (
    select id, mail,
            case gender
                when 'Female' then 'Female'
                when 'Male' then 'Male'
                else 'Other'
            end as gender
    from {{ ref ('additional_data_copy') }}
)

select *
from additional_data_mapped