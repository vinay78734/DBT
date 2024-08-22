with
    a as (
        select customername, sum(b.overall_profit) as total2
        from {{ ref("customers") }} a
        join {{ ref("silver_orders") }} b on a.customerid = b.customerid
        join {{ ref("products") }} c on b.productid = c.productid
        group by all
    ),
    b as (
        select productname, sum(b.overall_profit) as total1,
        from {{ ref("customers") }} a
        join {{ ref("silver_orders") }} b on a.customerid = b.customerid
        join {{ ref("products") }} c on b.productid = c.productid
        group by all
    )
select *
from a, b
