{{
  config( destination_table='user_first_source', update_method='append', prep=True)
}}

select *
from  {{ source(events, 'signups') }}
join  {{ source(users, 'users') }}
