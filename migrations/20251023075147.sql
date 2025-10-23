-- Create "users" table
CREATE TABLE IF NOT EXISTS `default`.`users` (
  `id` BIGINT NOT NULL,
  `email` STRING,
  `display_name` STRING,
  `created_at` TIMESTAMP
) TBLPROPERTIES ('delta.checkpoint.writeStatsAsJson' = 'false', 'delta.checkpoint.writeStatsAsStruct' = 'true', 'delta.enableDeletionVectors' = 'true', 'delta.enableRowTracking' = 'true', 'delta.feature.appendOnly' = 'supported', 'delta.feature.deletionVectors' = 'supported', 'delta.feature.domainMetadata' = 'supported', 'delta.feature.invariants' = 'supported', 'delta.feature.rowTracking' = 'supported', 'delta.minReaderVersion' = '3', 'delta.minWriterVersion' = '7', 'delta.parquet.compression.codec' = 'zstd');
