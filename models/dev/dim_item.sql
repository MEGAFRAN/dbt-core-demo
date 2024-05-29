{{config(materialized = 'table')}}

SELECT 
    {{dbt_utils.generate_surrogate_key(['item_purchased'])}} AS item_key,
    item_purchased,
    category,
    size,
    color
FROM {{ref('shopping_trend')}}
ORDER BY item_purchased