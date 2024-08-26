{{
    config(
        materialized='table'
    )
}}


with cte as (
    select * from {{ source('globalmart', 'products') }}
)
select * from cte