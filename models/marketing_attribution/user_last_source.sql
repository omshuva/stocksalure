{{
  config( destination_table='user_first_source', update_method='append' prep=True)
}}

select *
from  {{ source(billing, 'sales_and_revenue') }}
join  {{ source(users, 'users') }}
