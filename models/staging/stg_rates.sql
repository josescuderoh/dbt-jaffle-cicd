select
  "Value" as rate,
  "Currency Unit" as currency_unit,
  "Frequency" as frequency,
  date("Date") as date,
  split_part("Currency Name", '/', 0) as from_currency
from {{ source('economy', 'exratescc2018') }}
where "Indicator Name" = 'Close'
  and "Frequency" = 'D'
