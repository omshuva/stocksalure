{{
  config( destination_table='example_3', update_method='append' )
}}

select *
from  {{ source(prep_model, 'example_1') }}
