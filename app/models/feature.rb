class Feature < ApplicationRecord
  mount_uploader :image, ImageUploader

  validates_presence_of :image
  validates_presence_of :title
  validates_uniqueness_of :title
end
