{{
  config( destination_table='coupon_redemptions', update_method='append' )
}}

select *
from  {{ source(stripe, 'coupon_redemptions') }}
join  {{ source(stripe, 'coupons') }}
join  {{ source(model, 'customers') }}
