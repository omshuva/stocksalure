{{
  config( destination_table='payments', update_method='append', description="eveve" )
}}

select *
from  {{ source(stripe, 'payments') }}
join {{ source(stripe, 'payment_methods') }}  
