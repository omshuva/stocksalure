{{
  config( destination_table='google_ads', update_method='append' )
}}

select *
from  {{ source(google_ads, 'keyword_performance_report') }}
