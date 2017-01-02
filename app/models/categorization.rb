# == Schema Information
#
# Table name: categorizations
#
#  id          :integer          not null, primary key
#  category_id :integer
#  product_id  :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Categorization < ApplicationRecord
  belongs_to :category
  belongs_to :product
end
