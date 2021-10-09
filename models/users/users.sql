{{
  config( destination_table='users', update_method='append' )
}}

select *
from  {{ source(prod_db, 'users') }} users
join  {{ source(prod_db, 'user_details') }} ud
on users.id = ud.user_id
