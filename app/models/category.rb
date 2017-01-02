# == Schema Information
#
# Table name: categories
#
#  id             :integer          not null, primary key
#  name           :string           not null
#  parent_id      :integer
#  lft            :integer          not null
#  rgt            :integer          not null
#  depth          :integer          default("0"), not null
#  children_count :integer          default("0"), not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Category < ApplicationRecord
  acts_as_nested_set

  has_many :categorizations
  has_many :products, through: :categorizations
end
