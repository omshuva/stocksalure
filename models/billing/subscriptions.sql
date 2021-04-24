{{
  config( destination_table='subscriptions', update_method='append' )
}}

select *
from  {{ source(stripe, 'subscriptions') }}
join {{ source(stripe, 'invoices') }}
