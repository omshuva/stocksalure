{{
  config( destination_table='example_8', update_method='append' )
}}

select *
from  {{ source(model, 'example_7') }}
join {{ source(model, 'example_6') }} 
