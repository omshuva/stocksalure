{{
  config( destination_table='example_3', update_method='append' )
}}

select *
from  {{ source(model, 'example_1') }}
