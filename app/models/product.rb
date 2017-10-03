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
  extend SimplestStatus

  has_many :categorizations
  has_many :categories, through: :categorizations

  statuses :draft, :published, :archived
  simple_status :locale, [:english]

  accepts_nested_attributes_for :categories
end
