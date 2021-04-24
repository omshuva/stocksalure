{{
  config( destination_table='sessions', update_method='append' )
}}

select *
from  {{ source(model, 'all_events') }}
