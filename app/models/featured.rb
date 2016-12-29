class Feature < ApplicationRecord
  mount_uploader :image, ImageUploader
end
