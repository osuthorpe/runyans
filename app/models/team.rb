# == Schema Information
#
# Table name: teams
#
#  id          :integer          not null, primary key
#  name        :string           not null
#  image       :string
#  description :text
#  order       :integer
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Team < ApplicationRecord
  mount_uploader :image, ImageUploader
  extend SimplestStatus

  validates_presence_of :name

  statuses :draft, :published, :archived
  simple_status :locale, [:english]
end
