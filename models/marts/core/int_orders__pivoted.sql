with orders as (
    select * from {{ ref ('stg_jaffle_shop_orders' )}}
),
pivoted as (
    select 
        customer_id,
        count(order_id) as number_orders
    from orders 
    group by 1
    order by 1 asc
)

select * from pivoted