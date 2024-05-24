select *
from {{ ref('shopping_trends') }}
limit 5