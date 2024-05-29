{{config(materialized = 'table')}}

with fact_purchases as (
    select * from {{ref('fact_purchases')}}
), dim_location as (
    select * from {{ref('dim_location')}}
)

select
    order_id,
    customer_id,
    purchase_amount,
    discount_applied,
    review_rating,
    location
FROM fact_purchases
join dim_location on location = dim_location.location
limit 4
