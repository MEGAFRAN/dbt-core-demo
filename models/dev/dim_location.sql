{{config(materialized = 'table')}}

SELECT 
    ROW_NUMBER() OVER (ORDER BY location) AS location_id,
    location
FROM {{ref('shopping_trend')}}
GROUP BY location
ORDER BY location_id