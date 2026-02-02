CREATE or REPLACE TABLE analytics.bronze.sales_franchises (
  franchiseID BIGINT,
  name STRING,
  city STRING,
  district STRING,
  zipcode STRING,
  country STRING,
  size STRING,
  longitude DOUBLE,
  latitude DOUBLE,
  supplierID BIGINT,
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
