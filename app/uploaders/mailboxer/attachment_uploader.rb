class Mailboxer::AttachmentUploader < CarrierWave::Uploader::Base
  storage :fog
end
