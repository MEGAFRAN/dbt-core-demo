{{config(materialized = 'table')}}

SELECT 
    {{dbt_utils.generate_surrogate_key(['shipping_type'])}} AS shipping_type_key,
    shipping_type
FROM {{ref('shopping_trend')}}
GROUP BY shipping_type
ORDER BY shipping_type