class Mailboxer::AttachmentUploader < CarrierWave::Uploader::Base
  storage :fog

  def store_dir
    "message/#{model.id}/attachment"
  end

  def extension_white_list
    %w(jpg jpeg png pdf)
  end
end
