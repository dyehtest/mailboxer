CarrierWave.configure do |config|
  config.root = Rails.root.join('tmp')
  config.cache_dir = 'carrierwave'

  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: AMAZON[Rails.env]['access_key_id'],
    aws_secret_access_key: AMAZON[Rails.env]['secret_access_key'],
    region: AMAZON[Rails.env]['region'],
    path_style: true
  }

  config.fog_directory  = AMAZON[Rails.env]['bucket']
  config.fog_public     = true
  config.fog_attributes = { 'Cache-Control' => 'max-age=315576000' }
end
