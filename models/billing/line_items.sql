{{
  config( destination_table='line_items', update_method='append' )
}}

select *
from  {{ source(stripe, 'line_items') }}    
