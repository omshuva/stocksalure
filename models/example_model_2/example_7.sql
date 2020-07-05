{{
  config( destination_table='example_7', update_method='append' )
}}

select *
from  {{ source(model, 'example_6') }}
