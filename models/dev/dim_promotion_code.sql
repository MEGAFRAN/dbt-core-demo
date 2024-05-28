{{config(materialized = 'table')}}

SELECT 
    ROW_NUMBER() OVER (ORDER BY promo_code_used) AS promotion_code_id,
    promo_code_used
FROM {{ref('shopping_trend')}}
GROUP BY promo_code_used
ORDER BY promotion_code_id