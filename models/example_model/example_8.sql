{{
  config( destination_table='example_8', update_method='append' )
}}

select *
from  {{ source('example_model', 'example_7') }}
join {{ source('example_model', 'example_6') }}
