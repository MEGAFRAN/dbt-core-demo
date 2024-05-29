{{config(materialized = 'table')}}

SELECT 
    {{dbt_utils.generate_surrogate_key(['promo_code_used'])}} AS promotion_code_key,
    promo_code_used
FROM {{ref('shopping_trend')}}
GROUP BY promo_code_used
ORDER BY promo_code_used