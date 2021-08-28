{{
  config( destination_table='refunds', update_method='append' )
}}

select *
from  {{ source(stripe, 'refunds') }}
from  {{ source(model, 'payments') }}
