class ImageUploader < CarrierWave::Uploader::Base
  storage :fog # Use fog for Amazon S3

  # Configuration for Amazon S3
  def fog_credentials
    {
      provider: 'AWS',
      aws_access_key_id: ENV['AWS_ACCESS_KEY_ID'],
      aws_secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
      region: 'us-east-2'
    }
  end

  def fog_directory
    'cinefiles-images'
  end

  def fog_public
    true # Set to 'false' if you want to restrict access
  end

  def store_dir
    'uploads'
  end
end
