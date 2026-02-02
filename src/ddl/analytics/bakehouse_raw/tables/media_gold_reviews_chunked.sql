CREATE or replace TABLE analytics.bakehouse_raw.media_gold_reviews_chunked (
  franchiseID INT,
  review_date TIMESTAMP,
  chunked_text STRING,
  chunk_id STRING,
  review_uri STRING,
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
