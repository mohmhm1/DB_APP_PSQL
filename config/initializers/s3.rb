CarrierWave.configure do |config|
  config.fog_credentials = {
      :provider               => 'AWS',
      :aws_access_key_id      => 'AKIAJ4WY3D76YIH2B5GQ',
      :aws_secret_access_key  => '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'
       #:region                 => 'us-east-1' # Change this for different AWS region. Default is 'us-east-1'
  }
  config.fog_directory  = 'vela'
end