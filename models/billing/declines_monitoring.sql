{{
  config( destination_table='declines_monitoring', update_method='append' )
}}

select *
from  {{ source(model, 'payments') }}
