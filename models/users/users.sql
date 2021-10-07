{{
  config( destination_table='users', update_method='append' )
}}

select *
from  {{ source(prod_db, 'users') }}
join  {{ source(prod_db, 'user_details') }} 
