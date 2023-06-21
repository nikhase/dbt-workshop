-- test just to show how singular tests works. Not null should be made using generic tests.
select *
from {{ ref("stg_customers") }}
where customer_id is null
