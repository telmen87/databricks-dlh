CREATE or replace TABLE analytics.bronze.sales_customers (
  customerID BIGINT,
  first_name STRING,
  last_name STRING,
  email_address STRING,
  phone_number STRING,
  address STRING,
  city STRING,
  state STRING,
  country STRING,
  continent STRING,
  postal_zip_code BIGINT,
  gender STRING,
  _ingested_at TIMESTAMP)
USING delta
TBLPROPERTIES (
  'delta.enableDeletionVectors' = 'true',
  'delta.feature.appendOnly' = 'supported',
  'delta.feature.deletionVectors' = 'supported',
  'delta.feature.invariants' = 'supported',
  'delta.minReaderVersion' = '3',
  'delta.minWriterVersion' = '7')
