class Service < ApplicationRecord
  mount_uploader :image, ImageUploader

  validates_presence_of :image
  validates_presence_of :title
  validates_uniqueness_of :title
  validates_presence_of :description
  validates_uniqueness_of :order
  validates_presence_of :order
end
