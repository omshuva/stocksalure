{{
  config( destination_table='example_9', update_method='append' )
}}

select *
from  {{ source(model, 'example_8') }}
join {{ source(model, 'example_7') }}
