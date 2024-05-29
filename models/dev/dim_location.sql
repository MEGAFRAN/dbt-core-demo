{{config(materialized = 'table')}}

SELECT 
    {{dbt_utils.generate_surrogate_key(['location'])}} AS location_key,
    location
FROM {{ref('shopping_trend')}}
GROUP BY location
ORDER BY location