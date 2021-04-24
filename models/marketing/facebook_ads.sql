{{
  config( destination_table='facebook_ads', update_method='append' )
}}

select *
from  {{ source(facebook_ads, 'ad_insights') }}
