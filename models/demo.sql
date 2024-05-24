{{config(materialized='table')}}

with source as (
    select
        Age,
        Gender
    from {{ ref('shopping_trends') }}
)

select * from source
