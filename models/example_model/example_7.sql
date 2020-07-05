{{
  config( destination_table='example_7', update_method='append' )
}}

select *
from  {{ source('example_model', 'example_6') }}
