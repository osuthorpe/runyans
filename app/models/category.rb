class Category < ApplicationRecord
  acts_as_nested_set

  has_many :categorizations
  has_many :products, through: :categorizations
end
