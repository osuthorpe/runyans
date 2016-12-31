class Product < ApplicationRecord
  mount_uploader :image, ImageUploader

  has_many :categorizations
  has_many :categories, through: :categorizations

  accepts_nested_attributes_for :categories
end
