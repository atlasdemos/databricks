-- Add new schema named "default"
CREATE SCHEMA IF NOT EXISTS `default`;
-- Create "users" table
CREATE TABLE `default`.`users` (
  `id` BIGINT NOT NULL,
  `email` STRING,
  `display_name` STRING,
  `full_name` STRING,
  `created_at` TIMESTAMP
) TBLPROPERTIES ('delta.checkpoint.writeStatsAsJson' = 'false',
    'delta.checkpoint.writeStatsAsStruct' = 'true',
    'delta.enableDeletionVectors' = 'true',
    'delta.feature.appendOnly' = 'supported',
    'delta.feature.deletionVectors' = 'supported',
    'delta.feature.invariants' = 'supported',
    'delta.minReaderVersion' = '3',
    'delta.minWriterVersion' = '7',
    'delta.parquet.compression.codec' = 'zstd'
);
