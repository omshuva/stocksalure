{{
  config( destination_table='first_touch_model', update_method='append' )
}}

with sales as (
select *
from  {{ source(billing, 'sales_and_revenue') }}
join  {{ source(prep_model, 'user_first_source') }}
),

signups as (
  select *
  from  {{ source(users, 'users') }}
  join  {{ source(prep_model, 'user_first_source') }}
)

organic_visits as (
  select *
  from  {{ source(events, 'sessions') }}
  join  {{ source(prep_model, 'user_first_source') }}
)

marketing as (
  select *
  from  {{ source(marketing, 'marketing_channels') }}
)
