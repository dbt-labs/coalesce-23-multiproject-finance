with orders as (
    select * from {{ ref('core_platform','fct_orders',version=latest) }}
), 

agg as (
    select 
        ordered_at,
        sum(order_total) as order_revenue 
    from orders 
    group by 1
)

select * from agg