{{
  config( destination_table='bing_ads', update_method='append' )
}}

select *
from {{ source(bing_ads, 'keyword_performance_report') }}
