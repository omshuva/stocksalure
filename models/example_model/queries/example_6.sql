{{
  config( destination_table='example_6', update_method='append' )
}}

select *
from  {{ source('example_model', 'example_4') }}
join {{ source('example_model', 'example_3') }}
