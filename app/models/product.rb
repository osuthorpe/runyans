# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  name        :string           not null
#  description :text
#  price       :string
#  image       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Product < ApplicationRecord
  mount_uploader :image, ImageUploader

  has_many :categorizations
  has_many :categories, through: :categorizations

  accepts_nested_attributes_for :categories
end
