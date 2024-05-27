{{config(materialized = 'table')}} 

select 
    age,
    gender,
    purchase_amount,
    location,
    season,
    payment_method,
    frequency_of_purchases
from {{ref('shopping_trends_formatted')}}

