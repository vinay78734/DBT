{{
    config(
        materialized='table'
    )
}}

with cte as (
    select * from {{ source('globalmart', 'customers') }}
)
select * from cte