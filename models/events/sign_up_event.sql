{{
  config( destination_table='signups', update_method='append' )
}}

select *
from  {{ source(events_raw, 'event_signup') }}
