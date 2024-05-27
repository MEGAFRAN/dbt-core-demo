{{config(materialized = 'table')}} 

select 
    gender,
    AVG(Age) as average_age,
    AVG(purchase_amount) as average_purchase_amount,
from {{ref('shopping_trends_formatted')}}
group by gender