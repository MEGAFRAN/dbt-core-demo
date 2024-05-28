{{config(materialized = 'table')}}

SELECT 
    ROW_NUMBER() OVER (ORDER BY item_purchased) AS item_id,
    item_purchased,
    category,
    size,
    color
FROM {{ref('shopping_trend')}}
ORDER BY item_id