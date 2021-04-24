{{
  config( destination_table='payments', update_method='append' )
}}

select *
from  {{ source(stripe, 'payments') }}
join {{ source(stripe, 'payment_methods') }}
