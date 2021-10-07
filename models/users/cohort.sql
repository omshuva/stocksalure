{{
  config( destination_table='cohort', update_method='append' )
}}

select *
from  {{ source(model, 'users') }}
join  {{ source(billing, 'invoices') }}    
