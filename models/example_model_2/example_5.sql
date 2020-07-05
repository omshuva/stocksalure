{{
  config( destination_table='example_5', update_method='append' )
}}

select *
from  {{ source(model, 'example_4') }}
join {{ source(model, 'example_3') }}
