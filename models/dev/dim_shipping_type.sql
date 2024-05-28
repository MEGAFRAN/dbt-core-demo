{{config(materialized = 'table')}}

SELECT 
    ROW_NUMBER() OVER (ORDER BY shipping_type) AS shipping_type_id,
    shipping_type
FROM {{ref('shopping_trend')}}
GROUP BY shipping_type
ORDER BY shipping_type_id