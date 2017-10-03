# == Schema Information
#
# Table name: features
#
#  id         :integer          not null, primary key
#  title      :string           default(""), not null
#  image      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  homepage   :boolean          default("false")
#

class Feature < ApplicationRecord
  mount_uploader :image, ImageUploader
  extend SimplestStatus

  validates_presence_of :image
  validates_presence_of :title
  validates_uniqueness_of :title

  statuses :draft, :published, :archived
  simple_status :locale, [:english]
end
