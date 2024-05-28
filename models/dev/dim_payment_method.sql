{{config(materialized = 'table')}}

SELECT 
    ROW_NUMBER() OVER (ORDER BY payment_method) AS payment_method_id,
    payment_method
FROM {{ref('shopping_trend')}}
GROUP BY payment_method
ORDER BY payment_method_id