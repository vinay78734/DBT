{{
    config(
        materialized='table'
    )
}}



with cte as (
    select * from raw.globalmart.orders
)
select * from cte