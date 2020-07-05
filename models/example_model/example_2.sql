{{
  config( destination_table='example_2', update_method='append' )
}}

select *
from  {{ source(model, 'example_1') }}
