{{
  config( destination_table='ab_tests', update_method='append' )
}}

select *
from  {{ source(model, 'all_events') }}
