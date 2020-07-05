{{
  config( destination_table='example_6', update_method='append' )
}}

select *
from {{ source(model, 'example_4') }}
