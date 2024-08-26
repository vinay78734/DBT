{{
    config(
        materialized='table'
    )
}}



with cte as (
    select * from {{ source('globalmart', 'orders') }}
)
select * from cte