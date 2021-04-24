{{
  config( destination_table='customers', update_method='append' )
}}

select *
from  {{ source(stripe, 'customers') }}
join  {{ source(prod_db, 'users') }}
