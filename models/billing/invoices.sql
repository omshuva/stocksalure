{{
  config( destination_table='invoices', update_method='append' )
}}

select *
from {{ source(stripe, 'invoices') }}    
join {{ source(model, 'line_items') }}
join {{ source(model, 'customers') }}
