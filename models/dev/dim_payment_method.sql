{{config(materialized = 'table')}}

SELECT 
    {{dbt_utils.generate_surrogate_key(['payment_method'])}} AS payment_method_key,
    payment_method
FROM {{ref('shopping_trend')}}
GROUP BY payment_method
ORDER BY payment_method