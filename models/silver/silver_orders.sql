{{
    config(
        materialized='table'
    )
}}

select * ,ORDERSELLINGPRICE-ORDERCOSTPRICE as overall_profit from {{ ref('orders') }}