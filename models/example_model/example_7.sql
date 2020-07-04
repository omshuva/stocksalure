{{
  config( destination_table='example7', update_method='append' )
}}

select *
from  {{ source('example_model', 'example_6') }}
join {{ source('example_model', 'example_3') }}  
