{{
  config( destination_table='cohort', update_method='append' )
}}

select *
from  {{ source(model, 'users') }} users
join  {{ source(billing, 'invoices') }} invoices
on users.id = invoices.user_id  
