{{
  config( destination_table='example_4', update_method='append' )
}}

select *
from  {{ source(model, 'example_2') }}
join  {{ source(model, 'example_3') }}
