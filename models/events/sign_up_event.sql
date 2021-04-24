{{
  config( destination_table='signups', update_method='append' )
}}

select *
from  {{ source(events, 'event_signup') }}
