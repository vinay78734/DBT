{{
    config(
        materialized='table'
    )
}}


with cte as (
    select * from raw.globalmart.products
)
select * from cte