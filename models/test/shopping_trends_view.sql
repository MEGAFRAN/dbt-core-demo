{{config(materialized = 'view')}}

select *   
from {{ref('shopping_trends')}}