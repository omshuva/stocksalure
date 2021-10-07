{{
  config( destination_table='retention_cohort', update_method='append' )
}}

select *
from {{ source(model, 'users') }}
join {{ source(billing, 'invoices') }} 
