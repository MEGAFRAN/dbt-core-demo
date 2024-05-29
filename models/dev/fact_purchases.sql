{{config(materialized = 'table')}}

select
    ROW_NUMBER() OVER (order by customer_id) AS order_id,
    customer_id,
    {{dbt_utils.generate_surrogate_key(['item_purchased'])}} AS item_key,
    {{dbt_utils.generate_surrogate_key(['location'])}} AS location_key,
    {{dbt_utils.generate_surrogate_key(['payment_method'])}} AS payment_method_key,
    {{dbt_utils.generate_surrogate_key(['promo_code_used'])}} AS promotion_code_key, 
    {{dbt_utils.generate_surrogate_key(['shipping_type'])}} AS shipping_type_key,
    purchase_amount,
    discount_applied,
    review_rating 
FROM {{ref('shopping_trend')}}
order by order_id