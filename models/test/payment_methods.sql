{{config(materialized = 'table')}} 

select 
    age,
    gender,
    purchase_amount,
    location,
    season,
    payment_method,
from {{ref('shopping_trends_formatted')}}

