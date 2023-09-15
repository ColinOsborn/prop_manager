require 'shrine/storage/s3'

s3_options = {
  bucket: Rails.application.credentials.bucket,
  access_key_id: Rails.application.credentials.access_key_id,
  secret_access_key: Rails.application.credentials.secret_access_key,
  region: Rails.application.credentials.region
}

Shrine.storages = {
  cache: Shrine::Storage::S3.new(prefix: 'cache', **s3_options),
  store: Shrine::Storage::S3.new(**s3_options)
}

Shrine.plugin :activerecord
Shrine.plugin :direct_upload
Shrine.plugin :restore_cached_data
