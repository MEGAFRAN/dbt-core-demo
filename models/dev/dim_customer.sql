{{config(materialized = 'table')}}

SELECT 
    customer_id,
    age,
    gender,
    subscription_status, 
    previous_purchases, 
    frequency_of_purchases
FROM {{ref('shopping_trend')}}
ORDER BY customer_id