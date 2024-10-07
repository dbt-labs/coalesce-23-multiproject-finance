{{
    config(
        enabled=false
    )
}}

with orders as (
    select * from {{ ref('core_platform', 'fct_orders') }}
),

final as (
    select 
        location_name,
        tax_rate,
        sum(tax_paid) as total_tax_paid,
        count(order_id) as order_count
    from orders
    group by 1,2
)

select * from final