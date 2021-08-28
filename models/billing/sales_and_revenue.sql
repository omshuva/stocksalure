{{
  config( destination_table='sales_and_revenue', update_method='append' )
}}

select *
from  {{ source(model, 'invoices') }}
from  {{ source(model, 'payments') }}
from  {{ source(model, 'refunds') }}
