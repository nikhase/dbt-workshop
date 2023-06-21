with source as (

    select * from {{ ref('orders_snapshot') }}

),

renamed as (

    select
        id as order_id,
        user_id as customer_id,
        order_date,
        status

    from source
    where dbt_valid_to is null

)

select * from renamed
