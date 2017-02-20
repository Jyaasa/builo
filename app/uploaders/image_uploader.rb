class ImageUploader < CarrierWave::Uploader::Base

  # Include RMagick or MiniMagick support:
  include CarrierWave::RMagick
  # include CarrierWave::MiniMagick

  # Choose what kind of storage to use for this uploader:
  storage :file
  # storage :fog

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  version :large do
    process resize_to_fill: [340, 280]
  end

  version :thumb do
    process resize_to_fill: [195, 195]
  end

  version :logo do
    process resize_to_fill: [80, 80]
  end

  version :banner do
    process resize_to_fill: [1170, 300]
  end

  version :inquiry_member do
    process resize_to_fill: [50, 50]
  end

  version :performance_image do
    process resize_to_fill: [556, 572]
  end

  version :feedback do
    process resize_to_fill: [90, 90]
  end

  def extension_white_list
    %w(jpg jpeg png)
  end
end
