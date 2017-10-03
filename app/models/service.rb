# == Schema Information
#
# Table name: services
#
#  id          :integer          not null, primary key
#  title       :string           not null
#  description :text             not null
#  image       :string           not null
#  order       :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  homepage    :boolean          default("false")
#

class Service < ApplicationRecord
  mount_uploader :image, ImageUploader
  extend SimplestStatus

  validates_presence_of :image
  validates_presence_of :title
  validates_uniqueness_of :title
  validates_presence_of :description
  validates_uniqueness_of :order
  validates_presence_of :order

  statuses :draft, :published, :archived
  simple_status :locale, [:english]
end
