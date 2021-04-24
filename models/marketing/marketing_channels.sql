{{
  config( destination_table='marketing_channels', update_method='drop_create' )
}}

select *
from  {{ source(facebook_ads, 'ad_insights') }}
union  {{ source(google_ads, 'keyword_performance_report') }}
union  {{ source(bing_ads, 'keyword_performance_report') }}
