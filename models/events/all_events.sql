{{
  config( destination_table='all_events', update_method='append' )
}}

select *
from  {{ source(events, 'all_events') }}
