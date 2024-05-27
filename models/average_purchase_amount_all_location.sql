{{config(materialized = 'table')}} 

select 
    location,
    AVG(purchase_amount) as average_purchase_amount,
from {{ref('shopping_trends_formatted')}}
group by location