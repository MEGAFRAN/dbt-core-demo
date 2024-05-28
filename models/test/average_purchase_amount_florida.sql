{{config(materialized = 'table')}} 

select 
    DISTINCT location,
    AVG(purchase_amount) as average_purchase_amount,
from {{ref('shopping_trends_formatted')}}
where location = "Florida" OR location = "florida"
group by location