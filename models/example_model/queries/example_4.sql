{{
  config( destination_table='example_4', update_method='append' )
}}

select *
from  {{ source('example_model', 'example_2') }}
join  {{ source('example_model', 'example_3') }}
