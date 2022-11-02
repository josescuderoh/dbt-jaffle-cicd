select
  rate,
  currency_unit,
  frequency,
  date,
  from_currency
from {{ ref('stg_rates') }}
limit 100
