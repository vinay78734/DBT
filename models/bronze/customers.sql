{{
    config(
        materialized='table'
    )
}}

with cte as (
    select * from raw.globalmart.customers
)
select * from cte