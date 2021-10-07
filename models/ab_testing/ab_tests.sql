{{
  config( destination_table='ab_tests', update_method='append' )
}}

select *
from  {{ source(events, 'all_events') }}
