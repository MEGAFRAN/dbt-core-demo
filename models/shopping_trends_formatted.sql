{{config(materialized = 'table')}}

select 
    `Customer ID` as customer_id,
    Age as age,
    Gender as gender,
    `Item Purchased` as item_purchased,
    Category as category,
    `Purchase Amount` as purchase_amount,
    Location as location,
    Size as size,
    Color as color,
    Season as season,
    `Review Rating` as review_rating,
    `Subscription Status` as subscription_status,
    `Shipping Type` as shipping_type,
    `Discount Applied` as discount_applied,
    `Promo Code Used` as promo_code_used,
    `Previous Purchases` as previous_purchases,
    `Payment Method` as payment_method,
    `Frequency of Purchases` as frequency_of_purchases
    
from {{ref('shopping_trends')}}