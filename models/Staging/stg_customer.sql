{{config(materialized='ephemeral')}}
with customers as (

    select
        id as customer_id,
        first_name,
        last_name
    from {{source("Jaffle_shop","customers")}}

)

select * from customers
