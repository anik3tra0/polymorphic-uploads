CarrierWave.configure do |config|                       # required
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     'AKIAIEVIVO5UYF4B4B5Q',       # required
    aws_secret_access_key: 'onC0rE5SxH4M7NPYZmjyxNcnAkzWBE/cfrV/XD4h+c1gvr4+3KozKTpO7Ircfnj',                        # required
    region:                'ap-southeast-1',             # optional, defaults to 'us-east-1'
    host:                  's3.example.com',             # optional, defaults to nil
    endpoint:              'https://s3.example.com:8080' # optional, defaults to nil
  }
  config.fog_directory  = 'syookassets/appassets'                      # required
  config.fog_public     = false                                        # optional, defaults to true
  config.fog_attributes = { 'Cache-Control' => "max-age=#{365.day.to_i}" } # optional, defaults to {}
end