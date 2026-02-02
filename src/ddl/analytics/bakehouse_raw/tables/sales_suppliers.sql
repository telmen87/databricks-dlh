CREATE or replace table analytics.bakehouse_raw.sales_suppliers (
  supplierID BIGINT,
  name STRING,
  ingredient STRING,
  continent STRING,
  city STRING,
  district STRING,
  size STRING,
  longitude DOUBLE,
  latitude DOUBLE,
  approved STRING,
  _ingested_at TIMESTAMP)
USING delta
TBLPROPERTIES (
  'delta.checkpoint.writeStatsAsJson' = 'false',
  'delta.checkpoint.writeStatsAsStruct' = 'true',
  'delta.dropFeatureTruncateHistory.retentionDuration' = '0 hours',
  'delta.enableChangeDataFeed' = 'true',
  'delta.enableDeletionVectors' = 'false',
  'delta.enableRowTracking' = 'true',
  'delta.feature.changeDataFeed' = 'supported',
  'delta.feature.domainMetadata' = 'supported',
  'delta.feature.rowTracking' = 'supported',
  'delta.minReaderVersion' = '1',
  'delta.minWriterVersion' = '7',
  'delta.parquet.compression.codec' = 'zstd',
  'delta.writePartitionColumnsToParquet' = 'true')
