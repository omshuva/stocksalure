{{
  config( destination_table='example_1', update_method='append' )
}}

select *
from  {{ source(example_source_schema, 'table_1') }}
join  {{ source(example_source_schema, 'table_2') }}
